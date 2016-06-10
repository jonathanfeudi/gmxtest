// Getting Inputs

scr_Inputs();

// Idle

//Stopping Animation Condition 

fallstopamount = 0;
runstopamount = 0;

// Unfreeze Enemies

global.freeze_all = 0;

// Back Inside

outside = 0;

hsp = 0;  // stop

//grav = 1;

/*if Key_Right and Key_Left
{
    state = states.idle;
}*/

// Idle

if (!Key_LBump 
and !Stick_UpRight
and !Stick_DownRight
and !Stick_UpLeft
and !Stick_DownLeft
and global.cut_scene = 0)
or (global.cut_scene = 1)
and !instance_exists(obj_Slash_Small)
and fightingstancesprite = 0
and arm_out = 0
and idle_toolong < 8
{
    sprite_index = spr_Oenn_Idle;
}

// Slash Idle

if instance_exists(obj_Slash_Small)
{
    sprite_index = spr_Oenn_Idle_Slash;
}

// Fighting Stance

if fightingstancesprite = 1
and arm_out = 0
and global.Oenn_stamina >= 15 and global.Oenn_hp >= 4 
{
    sprite_index = spr_Oenn_FightingStance;
}

// Arm Out

if global.Oenn_hp >= 4 or global.Oenn_stamina >= 15
{
    if arm_out > 0 and !Key_Up and !Key_Down
    {
        sprite_index = spr_Oenn_Idle_Shot;
    }
    if arm_out > 0 and Key_Up and !Key_Down
    {
        sprite_index = spr_Oenn_Idle_ShotUp;
    }
    
    if arm_out > 0 and !Key_Up and Key_Down
    {
        sprite_index = spr_Oenn_Crouch_Shot;
    }
}


// Low Health

if global.Oenn_hp < 4
{
    sprite_index = spr_Oenn_Low_Health;
}

// Low Stamina

if global.Oenn_stamina < 15
{
    sprite_index = spr_Oenn_Low_Health;
}


////////////////////////////////////////////////// DASHING

if can_move = 1 and global.Oenn_stamina >= 15 and global.Oenn_hp >= 4 
{
    if Key_RTrig
    and !Key_LBump
    {
        state = states.dashready;
    }
}
///////////////////////////////////////////////////

// Crouching
if can_move = 1
{
    if Key_Down and (place_meeting(x,y+1,par_wall) 
    or place_meeting(x,y+1,obj_Moving_Platform_Horizontal)
    or place_meeting(x,y+1,obj_Moving_Platform_Vertical)
    or place_meeting(x,y+1,obj_Platform_JumpDown)
    or place_meeting(x,y+1,obj_Platform_1way)
    or place_meeting(x,y+1,obj_Crystal_Wall))
    and !Walking and !Running
    
    {
        if arm_out = 0 
        {
            sprite_index = spr_Oenn_Crouch;
        }
        //mask_index = spr_Oenn_Collision_Mask_Crouch;
    }
    else
    {
        //mask_index = spr_Oenn_Collision_Mask;
    }
}

 // Make Fall Thru Platform Sound
if sprite_index = spr_Oenn_Crouch
and place_meeting(x,y+1,obj_Platform_JumpDown)
and Key_Down and Key_Jump
{
    audio_play_sound(snd_Oenn_Jump,10,0);
}

// Touching
if can_move = 1
{
    if Key_UpPressed and can_activate = 1 // AND ADD WHEN TOUCHING INTERACTABLE OBJECT
    
    {
        Switch.image_index = 0;
        image_index = 0;
        state = states.touching;
    }
}
// Saving
if can_move = 1
{
    if Key_UpPressed and can_save > 0
    and !instance_exists(obj_controller_ripple) // AND ADD WHEN TOUCHING INTERACTABLE OBJECT
    {
        image_index = 0;
        state = states.saving;
    }
}

// Idle to Pulling 
if can_move = 1
{
    if ((place_meeting(x+12,y,par_Push_Block) and image_xscale = 1) //x+8
    or (place_meeting(x-12,y,par_Push_Block) and image_xscale = -1)) // x-8
    and Key_LBumpPressed
    and place_meeting(x,y+2,par_Grounded)
    {
        state = states.pulling;
    }
}

// Aiming
if can_move = 1 and global.Oenn_stamina >= 15 and global.Oenn_hp >= 4 
{
    if Key_LBump 
    //and !((place_meeting(x+12,y,par_Push_Block) and image_xscale = 1) //x+8
    //or (place_meeting(x-12,y,par_Push_Block) and image_xscale = -1)) // x-8
    {
        if diagshot = 1
        {
            sprite_index = spr_Oenn_Idle_ShotDiagUp;
        }
        if diagshot = 0
        {
            sprite_index = spr_Oenn_Idle_ShotDiagDown;
        }
    }
    
    if (Stick_UpRight or Stick_UpLeft)
    and !((place_meeting(x+12,y,par_Push_Block) and image_xscale = 1) //x+8
    or (place_meeting(x-12,y,par_Push_Block) and image_xscale = -1)) // x-8
    {
        sprite_index = spr_Oenn_Idle_ShotDiagUp;
    }
    
    if (Stick_DownRight or Stick_DownLeft)
    and !((place_meeting(x+12,y,par_Push_Block) and image_xscale = 1) //x+8
    or (place_meeting(x-12,y,par_Push_Block) and image_xscale = -1)) // x-8
    {
        sprite_index = spr_Oenn_Idle_ShotDiagDown;
    }
}

// Idle to Blocking
if can_move = 1
{
    if Key_B/*changed from Pressed*/ and global.Oenn_stamina > 0
    and !Key_RBump
    {
        state = states.blocking;
    }
}

// Idle to Jumping
if can_move = 1
{
    if ((round(place_meeting(x,y+1,par_wall))) or (round(place_meeting(x,y+1,par_Platform)))
    or (round(place_meeting(x,y+1,obj_Crystal_Wall))))   //able to jump
    and !Key_B and !Key_Down
    {
        jumps = global.jumpsmax  // Resets Amount of Available jumps
        if Key_JumpPressed and jumps > 0
        {
            //audio_play_sound(snd_Oenn_Jump,10,0);
            audio_play_sound(snd_Oenn_Jump,10,0);
            instance_create(x,y,obj_Oenn_Dust);
            jumps -= 1; // subtracts 1 from available jumps
            if !Key_LBump
            {
                obj_Oenn_Legs.image_index = 0;
                sprite_index = spr_Oenn_PreJump; //Jump
                vsp = ((-jumpspeed)/global.slowmo); // jumps up
                state = states.jumping;
            }
            if Key_LBump 
            {
                if diagshot = 1
                {
                    sprite_index = spr_Oenn_Jumping_ShotDiagUp;
                    vsp = (-jumpspeed)/global.slowmo;
                    state = states.jumping;
                }
                if diagshot = 0
                {
                    sprite_index = spr_Oenn_Jumping_ShotDiagDown;
                    vsp = (-jumpspeed)/global.slowmo;
                    state = states.jumping;
                }   
            }
        }
    }
}

// Idle Falling
if can_move = 1
{
    if vsp > 0  //if vsp >= 1
    {
        sprite_index = spr_Oenn_JumptoFall;
        obj_Oenn_Legs.image_index = 0;
        state = states.falling;
    }
    
    if vsp < 0
    {
        state = states.jumping;
    }
}


// Idle to Walking
if can_move = 1 and stamina_recovery = 0
{
    if -Key_Left or Key_Right and !(Key_Left and Key_Right)// and !Key_B
    and ((round(place_meeting(x,y+1,par_wall))) or (round(place_meeting(x,y+1,par_Platform)))
    or (round(place_meeting(x,y+1,obj_Crystal_Wall))))
    {
        state = states.walking;
    }
}

// Idle to Running
if can_move = 1 
{
    if (-Key_Left or Key_Right) //and Key_RTrig //and !Key_B
    and global.Oenn_stamina > 0
    and ((round(place_meeting(x,y+1,par_wall))) or (round(place_meeting(x,y+1,par_Platform)))
    or (round(place_meeting(x,y+1,obj_Crystal_Wall))))
    {
        obj_Oenn_Legs.image_index = 0;
        state = states.running;
    }
}

////////////////////////////////////////////////////  Shooting

// Idle Shooting
if can_move = 1
{
    if Key_Shot 
    and charged = 0
    {
        state = states.shooting_idle;
    }
    if Key_Shot and !Key_Up // Straight
    and !Key_LBump
    and charged > 0
    {
        obj_Oenn_Legs.image_index = 0;
        audio_play_sound(snd_ChargeEnergySwell,10,0);
        sprite_index = spr_Oenn_ChargeShot;
        state = states.shooting_charged;
    }
    if Key_Shot and Key_Up // Up
    and !Key_LBump
    and charged > 0
    {
        obj_Oenn_Legs.image_index = 0;
        audio_play_sound(snd_ChargeEnergySwell,10,0);
        sprite_index = spr_Oenn_ChargeShot_Up;
        state = states.shooting_charged;
    }
    if Key_Shot //and !Key_Up // Up Diag
    and Key_LBump
    and diagshot = 1
    and charged > 0
    {
        obj_Oenn_Legs.image_index = 0;
        audio_play_sound(snd_ChargeEnergySwell,10,0);
        sprite_index = spr_Oenn_ChargeShot_UpDiag;
        state = states.shooting_charged;
    }
    if Key_Shot // Down Diag
    and Key_LBump
    and diagshot = 0
    and charged > 0
    {
        obj_Oenn_Legs.image_index = 0;
        audio_play_sound(snd_ChargeEnergySwell,10,0);
        sprite_index = spr_Oenn_ChargeShot_DownDiag;
        state = states.shooting_charged;
    }
}

////////////////////////////////////////////////////  Slashing

// Idle Slashing
if can_move = 1 
{
    if Key_SlashPressed and !instance_exists(obj_Slash_Small_Trail) 
    and global.Oenn_stamina > 0 
    and can_slash = 1
    and !Key_RBump
    {
        obj_Oenn_Legs.image_index = 0;
        state = states.slashing_idle;
    }
}
// To combo
if can_move = 1
{
    if instance_exists(obj_Slash_Small_Trail) 
    and global.Oenn_stamina > 0
    and Key_SlashPressed
    and !Key_Up
    and !Key_Down
    //and grounded
    {
        obj_Oenn_Legs.image_index = 0;
        sprite_index = spr_Oenn_SlashCombo_1;
        mask_index = spr_Oenn_Collision_Mask;
        state = states.slashing_combo;
        slash_combo = 0;
        //alarm[3] = 10;
    }
}
////////////////////////////////////////////////////  Skills

if can_move = 1
{
// Crystal Wall

if global.CrystalWall = 1
and global.Oenn_stamina > 30
and global.CrystalWall_B = 0
{
    if (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform))
    and Key_RBump and Key_Shot
    and !instance_exists(obj_Crystal_Wall)
    and ccw = 1
    {
        if ((!place_meeting(x+32,y,par_wall) and image_xscale = 2)
        or (!place_meeting(x+32,y,par_Platform) and image_xscale = 2))
        or ((!place_meeting(x-32,y,par_wall) and image_xscale = -2)
        or (!place_meeting(x-32,y,par_Platform) and image_xscale = -2))
        {
            if ((place_meeting(x+32,y+1,par_wall) or (place_meeting(x+32,y+1,par_Platform))) and (!place_meeting(x+32,y+1,par_Enemy)) and image_xscale = 2)
            or ((place_meeting(x-32,y+1,par_wall) or (place_meeting(x-32,y+1,par_Platform))) and (!place_meeting(x-32,y+1,par_Enemy)) and image_xscale = -2)
            {
                alarm[6] = room_speed*14;
                state = states.skill_crystal_wall;
            }
        }
    }
}

if global.CrystalWall = 1
and global.Oenn_stamina > 30
and global.CrystalWall_B = 1
{
    if (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform))
    and Key_RBump and Key_Shot
    and !instance_exists(obj_Crystal_Wall)
    and ccw = 1
    {
        if ((!place_meeting(x+32,y,par_wall) and image_xscale = 2)
        or (!place_meeting(x+32,y,par_Platform) and image_xscale = 2))
        or ((!place_meeting(x-32,y,par_wall) and image_xscale = -2)
        or (!place_meeting(x-32,y,par_Platform) and image_xscale = -2))
        {
            if ((place_meeting(x+32,y+1,par_wall) or (place_meeting(x+32,y+1,par_Platform)))  and image_xscale = 2)
            or ((place_meeting(x-32,y+1,par_wall) or (place_meeting(x-32,y+1,par_Platform)))  and image_xscale = -2)
            {
                alarm[6] = room_speed*14;
                state = states.skill_crystal_wall;
            }
        }
    }
}
}
//Collision

scr_Collision_Gravity();
