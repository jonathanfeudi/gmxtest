/// Dashing

//sprite_index = spr_Oenn_Dashing;

cbd = 1;

//obj_Oenn_Legs.image_speed = 1/2;

if image_index < 3
/*and (place_meeting(x+hsp,y+2,par_wall)) 
or (place_meeting(x+hsp,y+2,par_Platform)) 
or (place_meeting(x+hsp,y+2,obj_Crystal_Wall)) */
{ 
    if sprite_index = spr_Oenn_Dashing
    {
        hsp = -7;
    }
    if sprite_index = spr_Oenn_Dashing_Back
    {
        hsp = -7;
    }
}

if image_index > 3
or !(place_meeting(x-32,y+24,par_Grounded)) //y+2

//or !(place_meeting(x-hsp,y+2,par_Platform)) 
//or !(place_meeting(x-hsp,y+2,obj_Crystal_Wall))
{
    hsp = 0;
}

if image_index = 4
{
    if image_xscale = -1
    {
         part_particles_create(global.particle_system,x,y, global.pt_rundustleft, 1);
    }
    if image_xscale = 1
    {
         part_particles_create(global.particle_system,x,y, global.pt_rundust, 1);
    }
}

can_dashL = 0;
can_dashR = 0;

// Trail

if (image_index = 0 or image_index = 1 or image_index = 2
or image_index = 3 or image_index = 4 or image_index = 5)
{
with instance_create(x,y,obj_Oenn_Run_Trail)
{
    image_index = 5;
    image_alpha = 1;
    sprite_index = obj_Oenn_Body.sprite_index;
}
}

instance_deactivate_object(par_Hazard);

// Collision

scr_Collision_Gravity();
