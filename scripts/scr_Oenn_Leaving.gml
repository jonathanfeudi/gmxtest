// Getting Inputs

doorto = instance_nearest(x,y,obj_door); 

// Leaving

if place_meeting(x,y+1,par_wall)
{
    sprite_index = spr_Oenn_Running;
}
else
{
    sprite_index = spr_Oenn_Jump;
}
/*
if doorto.x > x
{
    hsp = (runspeed)/global.enemy_slowmo;
}

if doorto.x < x
{
    hsp = -(runspeed)/global.enemy_slowmo;
}
*/

if doorgoleft = 1
{
    hsp = (runspeed)/global.enemy_slowmo;
}

if doorgoright = 1
{
    hsp = -(runspeed)/global.enemy_slowmo;
}

cbd = 1;

outside = 1; // Doesnt Pit State

//Collision

scr_Collision_Gravity();
