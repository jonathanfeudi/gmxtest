
// Blocking

sprite_index = spr_Oenn_BlockingBreak;

if image_index < 15
{
    if image_index > 0
    {
        hsp = -1;
    }
    if image_index < 0
    {
        hsp = 1;
    }
}


// Falling

if vsp >= 1
{
    sprite_index = spr_Oenn_JumptoFall;
    obj_Oenn_Legs.image_index = 0;
    state = states.falling;
}


//Collision

scr_Collision_Gravity();
