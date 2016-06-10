//Getting Inputs

scr_Inputs();

// Falling Sprites

//sprite_index = spr_Oenn_JumptoFall;


// Double Jump

if Key_JumpPressed and jumps > 0 and global.DoubleJump = 1
and !instance_exists(obj_Hover_Vertical)
{
    part_particles_create(global.particle_system,x,y-8,global.pt_Oenn_Attack_Collision,10);
    part_particles_create(global.particle_system,x,y-8,global.pt_DoubleJumpAura,10);
    audio_play_sound(snd_Oenn_DoubleJump,10,0);
    sprite_index = spr_Oenn_PreJump;
    state = states.jumping;
    jumps -= 1;
    vsp = (-jumpspeed)/global.slowmo;
    fallstopamount = 0;
}

if (vsp < 0) and (!Key_Jump)
{
    vsp = (max(vsp, - jumpspeed/4)/global.slowmo);  
}
/*
if (vsp > 0) and (!Key_Jump)
{
    sprite_index = spr_Oenn_Falling; 
}
*/

// Horizontal Movement While Jumping

// Slow
if lock = 0
{
    move = Key_Left + Key_Right; 
    
    if can_run = 1
    {
        hsp = (move * (runspeed))/global.enemy_slowmo;
    }
    if can_run = 0
    {
        hsp = (move * movespeed)/global.enemy_slowmo;
    }  

}
// Landing

fallstopamount += 1;

if fallstopamount <= 30 // Coordinated with Falling Landing State Step Event
{
if ((place_meeting(x,y+3,par_wall)) or (place_meeting(x,y+3,par_Platform)) 
or (place_meeting(x,y+3,obj_Crystal_Wall)))  //able to jump
{
    jumps = global.jumpsmax
    if !Walking or !Running
    {
        if fightingstancesprite = 0
        {
            sprite_index = spr_Oenn_Idle;
        }
        if fightingstancesprite = 1
        {
            sprite_index = spr_Oenn_FightingStance;
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
        
        //state = states.idle;
    }
    if Key_RTrig
    {
        sprite_index = spr_Oenn_FightingStance;
        state = states.dashready;
    }
    if (!Walking or !Running) and Key_Shot
    {
        sprite_index = spr_Oenn_Idle_Shot;
        state = states.shooting_idle;
    }
    if Walking and !Key_RTrig
    {
        sprite_index = spr_Oenn_Walking;
        state = states.running;
    }
    if Walking and Key_Shot and global.Oenn_stamina > 0 and !Key_RTrig
    {
        sprite_index = spr_Oenn_Running_Shot;
        state = states.shooting_running;
    }
    if Running
    {
        sprite_index = spr_Oenn_Running;
        state = states.running;
    }
    if Running and Key_Shot and global.Oenn_stamina > 0
    {
        sprite_index = spr_Oenn_Running_Shot;
        state = states.shooting_running;
    }
}

if ((place_meeting(x,y+3,par_wall)) or (place_meeting(x,y+3,par_Platform))
or (place_meeting(x,y+3,obj_Crystal_Wall)))
and Key_LBump and diagshot = 1
    {
        jumps = global.jumpsmax
        sprite_index = spr_Oenn_Idle_ShotDiagUp;
        state = states.idle;
    }
    
if ((place_meeting(x,y+3,par_wall)) or (place_meeting(x,y+3,par_Platform))
or (place_meeting(x,y+3,obj_Crystal_Wall)))  
and Key_LBump and diagshot = 0
{
    jumps = global.jumpsmax
    sprite_index = spr_Oenn_Idle_ShotDiagDown;
    state = states.idle;
}
}
/*if fallstopamount > 20
{
if ((place_meeting(x,y+3,par_wall)) or (place_meeting(x,y+3,par_Platform)) 
or (place_meeting(x,y+3,obj_Crystal_Wall)))  //able to jump
{
    obj_Oenn_Legs.image_index = 0;
    state = states.fallingstop;
}
}*/
// Shoot

if Key_Shot
and charged = 0
{
    state = states.shooting_jumping;
}

if Key_Shot and !Key_Up // Straight
and !Key_LBump
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot_Jump;
    state = states.shooting_charged;
}

if Key_Shot and Key_Up // Up
and !Key_LBump
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    vsp = 0;
    sprite_index = spr_Oenn_ChargeShot_Jump_Up;
    state = states.shooting_charged;
}

if Key_Shot and Key_Down // Down
and !Key_LBump
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    vsp = 0;
    sprite_index = spr_Oenn_ChargeShot_Jump_Down;
    state = states.shooting_charged;
}

if Key_Shot //and !Key_Up // Up Diag
and Key_LBump
and diagshot = 1
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot_Jump_UpDiag;
    state = states.shooting_charged;
}

if Key_Shot // Down Diag
and Key_LBump
and diagshot = 0
and charged > 0
{
    obj_Oenn_Legs.image_index = 0;
    audio_play_sound(snd_ChargeEnergySwell,10,0);
    sprite_index = spr_Oenn_ChargeShot_Jump_DownDiag;
    state = states.shooting_charged;
}

// Aiming

if Key_LBump and state != states.shooting_charged
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

// Jump Slashing

if Key_SlashPressed 
and global.Oenn_stamina > 0
and !instance_exists(obj_Slash_Small) and can_slash = 1
{
    state = states.slashing_jumping;
}

//Collision

scr_Collision_Gravity();
