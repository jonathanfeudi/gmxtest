///Walking
//Getting Imputs
scr_Inputs();

//Walking

sprite_index = spr_Oenn_Walking;

move = Key_Left + Key_Right; 

hsp = ((move * movespeed)/global.enemy_slowmo);

// Reset Falling Meter

fallstopamount = 0;

// Walking to Idle

if move = 0
{
    state = states.idle;
    sprite_index = spr_Oenn_Idle;
}

if move != 0 and stamina_recovery = 1
{
    state = states.running;
    sprite_index = spr_Oenn_Idle;
}

// Walking to Pushing

if place_meeting(x,y+2,par_Grounded)
and 
(((place_meeting((x+3),(y),par_Push_Block)) and (Key_Right))
or ((place_meeting((x-3),(y),par_Push_Block)) and (-Key_Left)))
and !Key_LBump
and pushable = 1
{
    state = states.pushing;
}


// Walking to Blocking

if Key_B
and global.Oenn_stamina > 0
{
    state = states.blocking;
}

// Walking to Jumping

if ((place_meeting(x,y+1,par_wall))
or ((place_meeting(x,y+1,par_Platform)))
or ((place_meeting(x,y+1,obj_Crystal_Wall))))  //able to jump
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
            sprite_index = spr_Oenn_PreJump;//JUMP
            vsp = (-jumpspeed)/global.slowmo;
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

if vsp < 0
{
    state = states.jumping;
}


// Walking Falling
if vsp > 0
{
    sprite_index = spr_Oenn_JumptoFall;
    obj_Oenn_Legs.image_index = 0;
    state = states.falling;
}

// Walking to Walking and Shooting

if Key_Shot 
and charged = 0
{
    state = states.shooting_walking;
}
if Key_Shot and !Key_LBump
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot;
    state = states.shooting_charged;
}
if Key_Shot and Key_LBump
and diagshot = 1
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot_UpDiag;
    state = states.shooting_charged;
}
if Key_Shot and Key_LBump
and diagshot = 0
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot_DownDiag;
    state = states.shooting_charged;
}

// Aiming

if Key_LBump and (round(place_meeting(x,y+1,par_wall)) 
or place_meeting(x,y+1,obj_Crystal_Wall)) and state != states.shooting_charged
{
    if diagshot = 1
    {
        sprite_index = spr_Oenn_Walking_Shot_DiagUp;
    }
    if diagshot = 0
    {
        sprite_index = spr_Oenn_Walking_Shot_DiagDown;
    }
}

// Walking to (Walking and Slashing)

if Key_SlashPressed 
and global.Oenn_stamina > 0
and !instance_exists(obj_Slash_Small) and can_slash = 1
and !Key_RBump
{
    state = states.slashing_walking;
}

if lock = 1
{
    state = states.idle;
}

// Walking to Dashing

// Dash Left
if can_move = 1
{
if -Key_Left and Key_RTrig
and (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform) or place_meeting(x,y+1,obj_Crystal_Wall))
and can_dashL = 1
and global.Oenn_stamina > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_Charged,10,0);
    global.Oenn_stamina -= 15;
    if image_xscale < 0 
    {
        sprite_index = spr_Oenn_Dashing;
    }
    if image_xscale > 0 
    {
        sprite_index = spr_Oenn_Dashing_Back;
    }
    state = states.dashingleft;
}  
}
// Dash Right
if can_move = 1
{
if Key_Right and Key_RTrig
and (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform) or place_meeting(x,y+1,obj_Crystal_Wall))
and can_dashR = 1
and global.Oenn_stamina > 0
{
        obj_Oenn_Legs.image_index = 0;
        if image_xscale > 0 
        {
            sprite_index = spr_Oenn_Dashing;
        }
        if image_xscale < 0 
        {
            sprite_index = spr_Oenn_Dashing_Back;
        }
        audio_play_sound(snd_Charged,10,0);
        global.Oenn_stamina -= 15;
        state = states.dashingright;
}
}

//Collision

scr_Collision_Gravity();
