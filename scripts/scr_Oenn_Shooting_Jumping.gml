//Getting Inputs

scr_Inputs();

fallstopamount = 0;

// Double Jump

if Key_JumpPressed and jumps > 0 
{
    part_particles_create(global.particle_system,x,y-8,global.pt_Oenn_Attack_Collision,10);
    part_particles_create(global.particle_system,x,y-8,global.pt_DoubleJumpAura,10);
    audio_play_sound(snd_Oenn_DoubleJump,10,0);
    jumps -= 1;
    vsp = (-jumpspeed)/global.slowmo;
}

if (vsp < 0) and (!Key_Jump)
{
    vsp = (max(vsp, -jumpspeed/4))/global.slowmo;
}

// Jumping Shooting Sprites

sprite_index = spr_Oenn_Jumping_Shot;


if Key_Up
{
    sprite_index = spr_Oenn_Jumping_ShotUp;
}

if Key_LBump 
{
    if diagshot = 1
    {
        sprite_index = spr_Oenn_Jumping_ShotDiagUp;
    }
    if diagshot = 0
    {
        sprite_index = spr_Oenn_Jumping_ShotDiagDown;
    }
}

if Stick_UpRight or Stick_UpLeft
{
    sprite_index = spr_Oenn_Jumping_ShotDiagUp;
}

if Stick_DownRight or Stick_DownLeft
{
    sprite_index = spr_Oenn_Jumping_ShotDiagDown;
}

if Key_Down
{
    sprite_index = spr_Oenn_Jumping_ShotDown;
}

// Horizontal Movement While Jumping

// Slow

move = Key_Left + Key_Right; 

if can_run = 1
{
    hsp = (move * (runspeed))/global.enemy_slowmo;
}
if can_run = 0
{
    hsp = (move * movespeed)/global.enemy_slowmo;
}  

//hsp = (move * movespeed)/global.enemy_slowmo;
//hsp = (move * (runspeed))/global.enemy_slowmo;

// Fast
/*
if Key_RTrig 
{
    //hsp = (move * (runspeed))/global.enemy_slowmo;
}*/

// Release

if !Key_Shot  //Key_ShotRelease 
{
    sprite_index = spr_Oenn_Jump;
    state = states.jumping;
}

// Release

if /*Key_ShotRelease*/ !Key_Shot and vsp > 0 and !place_meeting(x,y,par_Platform)
{
    state = states.falling;
}


// Landing

if (place_meeting(x,y+1,par_wall))or (place_meeting(x,y+1,par_Platform))
or (place_meeting(x,y+1,obj_Crystal_Wall)) //able to jump
{
    jumps = global.jumpsmax;
    if (!Walking or !Running)
    {
        sprite_index = spr_Oenn_Idle_Shot;
        state = states.shooting_idle;
    }
    if (!Walking or !Running) and Key_LBump and diagshot = 1
    {
        sprite_index = spr_Oenn_Idle_ShotDiagUp;
        state = states.shooting_idle;
    }
    if (!Walking or !Running) and Key_LBump and diagshot = 0
    {
        sprite_index = spr_Oenn_Idle_ShotDiagDown;
        state = states.shooting_idle;
    }
    if (!Walking or !Running) and Key_Up
    {
        sprite_index = spr_Oenn_Idle_ShotUp;
        state = states.shooting_idle;
    }
    if (!Walking or !Running) and Key_Down
    {
        sprite_index = spr_Oenn_Crouch_Shot;
        state = states.shooting_idle;
    }
    if Walking
    {
        if can_run = 1
        {
            state = states.shooting_running; //walking
        }
        if can_run = 0
        {
            state = states.shooting_walking; 
        }
        
    }
    if Running and can_run =1
    {
        state = states.shooting_running;
    }
    if Walking and Key_LBump and diagshot = 1 and can_run =1
    {
        image_index = spr_Oenn_Running_Shot_DiagUp // was walking
        state = states.shooting_running;
    }
    if Walking and Key_LBump and diagshot = 0 and can_run =1
    {
        image_index = spr_Oenn_Running_Shot_DiagDown// was walking
        state = states.shooting_running;
    }
    if Running and Key_LBump and diagshot = 1 and can_run =1
    {
        image_index = spr_Oenn_Running_Shot_DiagUp
        state = states.shooting_running;
    }
    if Running and Key_LBump and diagshot = 0 and can_run =1
    {
        image_index = spr_Oenn_Running_Shot_DiagDown
        state = states.shooting_running;
    }
    
}

if lock = 1
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
