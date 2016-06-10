// Getting Imputs

scr_Inputs();


// Running

sprite_index = spr_Oenn_Running;

move = Key_Left + Key_Right; 

hsp = ((move * (runspeed))/global.enemy_slowmo);

// Arm Out Shooting
if arm_out > 0
{
    sprite_index = spr_Oenn_Running_Shot;
}

// CUT SCENE

if global.cut_scene = 1
{
    if image_xscale > 0
    {
        x += 5;
    }
    if image_xscale < 0
    {
        x -= 5;
    }
}

// Running to Idle

// Running Stop Meter and Reset Falling Meter

runstopamount += 1; //
fallstopamount = 0;

if global.cut_scene = 0
{
    if !(-Key_Left or Key_Right) and !Key_LBump
    {
        if image_xscale > 0
        {
            hsp = 2;
        }
        if image_xscale < 0
        {
            hsp = -2;
        }
        
        if runstopamount > 11 
        {
            obj_Oenn_Legs.image_index = 0;
            state = states.stopping;
        }
        if runstopamount <= 10 
        {
            obj_Oenn_Legs.image_index = 0;
            state = states.idle;
        }
    }
    if !(-Key_Left or Key_Right) and Key_LBump
    {
        obj_Oenn_Legs.image_index = 0;
        state = states.idle;
        if diagshot = 1
        {
            sprite_index = spr_Oenn_Idle_ShotDiagUp;
        }
        if diagshot = 0
        {
            sprite_index = spr_Oenn_Idle_ShotDiagDown;
        }
    }
}

// Running to Pushing 

if place_meeting(x,y+2,par_Grounded)
and 
(((place_meeting((x+4),(y),par_Push_Block)) and (Key_Right))
or ((place_meeting((x-4),(y),par_Push_Block)) and (-Key_Left)))
and !Key_LBump
and pushable = 1
{
    state = states.pushing;
}

// Idle to Blocking

if Key_B
and global.Oenn_stamina > 0
{
    state = states.blocking;
}

// Running to Jumping

if ((place_meeting(x,y+1,par_wall)))
or ((place_meeting(x,y+1,par_Platform)))
or ((place_meeting(x,y+1,obj_Crystal_Wall)))//able to jump
{
    jumps = global.jumpsmax  // Resets Amount of Available jumps
    if Key_JumpPressed and jumps > 0
    {
        
        audio_play_sound(snd_Oenn_Jump,10,0);
        //audio_play_sound(snd_Oenn_Jump,10,0);
        instance_create(x,y,obj_Oenn_Dust);
        jumps -= 1; // subtracts 1 from available jumps
        if !Key_LBump
        {
            obj_Oenn_Legs.image_index = 0;
            sprite_index = spr_Oenn_PreJump; //LUMP
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
    sprite_index = spr_Oenn_PreJump;
    state = states.jumping;
}

// Running Falling
if vsp > 0  //vsp >= 1
{
    sprite_index = spr_Oenn_JumptoFall;
    obj_Oenn_Legs.image_index = 0;
    state = states.falling;
}

// Running to Jump Shooting

if Key_Shot and Key_JumpPressed
//and global.Oenn_stamina > 0
{
    state = states.shooting_jumping;
}

///////////////////////////// SHOOTING

if Key_Shot 
and charged = 0
{
    state = states.shooting_running;
}
if Key_Shot  and !Key_LBump
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot;
    state = states.shooting_charged;
}
// Diag Shots
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

if Key_LBump and grounded and state != states.shooting_charged
{
    if diagshot = 1
    {
        sprite_index = spr_Oenn_Running_Shot_DiagUp;
    }
    if diagshot = 0
    {
        sprite_index = spr_Oenn_Running_Shot_DiagDown;
    }
}

// Running Slash

// Walking to (Walking and Slashing)

if Key_SlashPressed 
and global.Oenn_stamina > 0
and !instance_exists(obj_Slash_Small) and can_slash = 1
and !Key_RBump
{
    state = states.slashing_running;
}

// Exhaust

if global.Oenn_stamina <= 1
{
    global.Oenn_stamina = 0;
    stamina_recovery = 0;
    alarm[4] = 2.5*room_speed;
    state = states.walking;
}

// Locked

if lock = 1
{
    state = states.idle;
}

// Running to Dashing

// Dash Left
if can_move = 1
{
if -Key_Left and Key_RTrig
and (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform) or place_meeting(x,y+1,obj_Crystal_Wall))
and can_dashL = 1
and global.Oenn_stamina > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_Dash,10,0);
    global.Oenn_stamina -= 15;
    if image_xscale < 0 
    {
        sprite_index = spr_Oenn_Dashing;
    }
    if image_xscale > 0 
    {
        sprite_index = spr_Oenn_Dashing_Back;
    }
    flash_timer = 13.5;
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
        audio_play_sound(snd_Dash,10,0);
        global.Oenn_stamina -= 15;
        flash_timer = 13.5;
        state = states.dashingright;
}
}

// Collision

scr_Collision_Gravity();
