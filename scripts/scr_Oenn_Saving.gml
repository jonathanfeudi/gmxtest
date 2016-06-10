/// Variables

can_save = 0;

//cbd = 1;

altar = instance_nearest(x,y,par_Save_Altar);

if (distance_to_point(altar.x, y) > 0)
{
    move_towards_point(altar.x,y,2);
}
else
{
    x = altar.x
    speed = 0;
}

sprite_index = spr_Oenn_Saving;

if instance_exists(obj_Oenn_Interact_Bubble)
{
    with obj_Oenn_Interact_Bubble
    {
        instance_destroy();
    }
}

// Gravity and Collisions

scr_Collision_Gravity();
