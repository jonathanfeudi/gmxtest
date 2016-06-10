/// Variables

can_save = 0;

hsp = 0

sprite_index = spr_Oenn_Saving_Done;

if !instance_exists(obj_SavingAura)
{
    instance_create(x,y,obj_SavingAura);
}

//if instance_exists(obj_Save_Bar)
if altar.alarm[1] < 0
{
    altar.alarm[1] = 1;
}


// Gravity and Collisions

scr_Collision_Gravity();
