//Getting Inputs

scr_Inputs();

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
    /*if place_meeting(x,y+32,par_wall)
    {
        vsp = (-jumpspeed*8)/global.slowmo;
    }*/
    y -= 7;
}

// Double Jump

//grav = .4;

if Key_JumpPressed and jumps > 0 and global.DoubleJump = 1 
and !place_meeting(x,y,par_Platform)
and !instance_exists(obj_Hover_Vertical)
{
    part_particles_create(global.particle_system,x,y-8,global.pt_Oenn_Attack_Collision,10);
    part_particles_create(global.particle_system,x,y-8,global.pt_DoubleJumpAura,10);
    audio_play_sound(snd_Oenn_DoubleJump,10,0);
    sprite_index = spr_Oenn_PreJump;
    jumps -= 1;
    vsp = (-jumpspeed)/global.slowmo;
    fallstopamount = 0;
}

if (vsp < 0) and (!Key_Jump)
{
    vsp = (max(vsp, - jumpspeed/4)/global.slowmo);
}

// Jumping Sprites


if !Key_LBump
{
    //sprite_index = spr_Oenn_Jump;
}

if Key_LBumpRelease
{
    sprite_index = spr_Oenn_Jump;
}

// FALLING
if global.cut_scene = 0
{
    if vsp >= 0 and !place_meeting(x,y,par_Platform) 
    {
        sprite_index = spr_Oenn_JumptoFall;
        obj_Oenn_Legs.image_index = 0;
        state = states.falling;
    }
}

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

//hsp = (move * movespeed)/global.enemy_slowmo;
//hsp = (move * (runspeed))/global.enemy_slowmo;
    /*
    //hsp = (move * movespeed)/global.enemy_slowmo;
    hsp = (move * (runspeed)/global.enemy_slowmo);
    
    // Fast
    
    if Key_RTrig and global.Oenn_stamina > 0
    {
        hsp = (move * (runspeed)/global.enemy_slowmo);
    }*/
}

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

// Locked

if lock = 1
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
