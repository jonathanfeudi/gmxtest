/// Variables

hsp = 0

if room = room_IntroStage_00
{
    sprite_index = spr_Oenn_Sitting;
}
else
{
    sprite_index = spr_Oenn_Idle;
}


// Lock Player

if lock = 0
{
    state = states.idle;
}

// Gravity and Collisions

scr_Collision_Gravity();
