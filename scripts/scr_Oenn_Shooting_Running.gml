//Getting Inputs

scr_Inputs();

//Running and Shooting

sprite_index = spr_Oenn_Running_Shot;


if Key_LBump 
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

if Stick_UpRight or Stick_UpLeft
{
    sprite_index = spr_Oenn_Running_Shot_DiagUp;
}

if Stick_DownRight or Stick_DownLeft
{
    sprite_index = spr_Oenn_Running_Shot_DiagDown;
}

move = Key_Left + Key_Right; 

hsp = (move * (runspeed))/global.enemy_slowmo;

// (Running and Shooting) to Idle

if !-Key_Left and !Key_Right and !Key_Shot
{
    state = states.idle;
}

if !-Key_Left and !Key_Right and Key_Shot
{
    state = states.shooting_idle;
}

/*if move = 0
{
    sprite_index = spr_Oenn_Running_Shot;
}*/

// (Running and Shooting) to Running

if !Key_Shot
{
    state = states.running;
}

// (Running and Shooting) to Blocking

if Key_B
{
    state = states.blocking;
}

// (Running and Shooting) to Jumping

if ((round(place_meeting(x,y+1,par_wall)))
or (round(place_meeting(x,y+1,par_Platform)))
or (round(place_meeting(x,y+1,obj_Crystal_Wall)))) 
and Key_JumpPressed  //able to jump
{
    audio_play_sound(snd_Oenn_Jump,10,0);
    instance_create(x,y,obj_Oenn_Dust);
    jumps -= 1;
    sprite_index = spr_Oenn_Jumping_Shot
    vsp = (-jumpspeed)/global.slowmo;
    state = states.shooting_jumping;   
}

if vsp < 0
{
    state = states.shooting_jumping; 
}

// Falling

if vsp >= 1 and Key_ShotRelease
{
    state = states.falling;
}

// (Running and Shooting) to Running
/*
if Key_RTrigRelease 
{
    state = states.shooting_running; //walking was
}*/

//  Falling

if vsp >= 1
{
    state = states.shooting_jumping;
}

// Locked

if lock = 1
{
    state = states.idle;
}


//Collision

scr_Collision_Gravity();
