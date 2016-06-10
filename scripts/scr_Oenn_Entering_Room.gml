// Entering

global.freeze_all = 1;  // Freeze enemies

outside = 1; // Dont die outside room,,, where we enter from

can_dashL = 1;
can_dashR = 1;

sprite_index = spr_Oenn_Running;

if x < room_width/2 
{
    hsp = (runspeed)/global.enemy_slowmo;
}

if x > room_width/2 
{
    hsp = -(runspeed)/global.enemy_slowmo;
}

//lock = 1;

cbd = 1;

//obj_Oenn_Body.can_move = 0;

// Oenn Fighting Stance in Certain Rooms

if room = room_IntroStage_2
{
    fightingstance = 500;
}

//Collision

scr_Collision_Gravity();
