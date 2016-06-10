// Getting Inputs

scr_Inputs();

// Shooting to Blocking //???

if Key_B and global.Oenn_stamina > 0
{
    state = states.blocking;
}

// Stop

hsp = 0;

// Shooting

if !Key_LBump
{
if global.Oenn_stamina >= 15 or global.Oenn_hp >= 4 
{ 
    sprite_index = spr_Oenn_Idle_Shot;
}
if global.Oenn_stamina < 15 or global.Oenn_hp < 4 
{ 
    sprite_index = spr_Oenn_Low_Health_Shot;
}

if Key_Up
{
    if global.Oenn_stamina >= 15 or global.Oenn_hp >= 4 
    { 
        sprite_index = spr_Oenn_Idle_ShotUp;
    }
    if global.Oenn_stamina < 15 or global.Oenn_hp < 4 
    { 
        sprite_index = spr_Oenn_Low_Health_Shot_Up;
    }    
}
}

if Key_LBump 
{
    if diagshot = 1
    {
        //sprite_index = spr_Oenn_Idle_ShotDiagUp;
        if global.Oenn_stamina >= 15 or global.Oenn_hp >= 4 
        { 
            sprite_index = spr_Oenn_Idle_ShotDiagUp;
        }
        if global.Oenn_stamina < 15 or global.Oenn_hp < 4 
        { 
            sprite_index = spr_Oenn_Low_Health_ShotUpDiag;
        }    
    }
    if diagshot = 0
    {
        //sprite_index = spr_Oenn_Idle_ShotDiagDown;
        if global.Oenn_stamina >= 15 or global.Oenn_hp >= 4 
        { 
            sprite_index = spr_Oenn_Idle_ShotDiagDown;
        }
        if global.Oenn_stamina < 15 or global.Oenn_hp < 4 
        { 
            sprite_index = spr_Oenn_Low_Health_ShotDownDiag;
        } 
    }
}

if Stick_UpRight or Stick_UpLeft
{
    if global.Oenn_stamina >= 15 or global.Oenn_hp >= 4 
        { 
            sprite_index = spr_Oenn_Idle_ShotDiagUp;
        }
        if global.Oenn_stamina < 15 or global.Oenn_hp < 4 
        { 
            sprite_index = spr_Oenn_Low_Health_ShotUpDiag;
        }    
}

if Stick_DownRight or Stick_DownLeft
{
    if global.Oenn_stamina >= 15 or global.Oenn_hp >= 4 
        { 
            sprite_index = spr_Oenn_Idle_ShotDiagDown;
        }
        if global.Oenn_stamina < 15 or global.Oenn_hp < 4 
        { 
            sprite_index = spr_Oenn_Low_Health_ShotDownDiag;
        } 
}

if Key_Down and !Key_LBump
{
    sprite_index = spr_Oenn_Crouch_Shot;
}


// Idle to Walking Shooting

if Key_Shot and (-Key_Left or Key_Right)

{
    if can_run = 0
    {
        state = states.shooting_walking; //walking
    }
    if can_run = 1
    {
        state = states.shooting_running; //walking
    }
}

// Idle to Jumping

if (place_meeting(x,y+1,par_wall)
or place_meeting(x,y+1,obj_Crystal_Wall)) 
and Key_JumpPressed and !Key_Shot  //able to jump
{
    audio_play_sound(snd_Oenn_Jump,10,0);
    instance_create(x,y,obj_Oenn_Dust);
    jumps -= 1;
    vsp = (-jumpspeed)/global.slowmo;
    state = states.jumping;   
}

// Idle to Jump Shooting

if Key_Shot and Key_JumpPressed
{
    instance_create(x,y,obj_Oenn_Dust);
    jumps -= 1;
    vsp = (-jumpspeed)/global.slowmo;
    state = states.shooting_jumping;
}

//Falling Shooting MAYBE!!!!!  CAUSES BUG OENN STUCK IN IDLE SHOOTING STATE
/*
if vsp >= 1 and Key_ShotRelease
{
    state = states.falling;
}
*/
// Shooting to Idle

if Key_ShotRelease or !Key_Shot
{
    state = states.idle;
}

// Idle Falling

if vsp != 0 and Key_Shot
{
    state = states.shooting_jumping;
}

// Locked

if lock = 1
{
    state = states.idle;
}

// Collision

scr_Collision_Gravity();
