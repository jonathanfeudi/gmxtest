
grav = 0;

/// Running Dust

if  sprite_index = spr_Oenn_Running
and (image_index = 2 or image_index = 5)
and image_xscale = 2
and place_meeting(x,y+1,obj_floor)
and image_xscale > 0
{
    audio_play_sound(snd_Oenn_Running,10,0);
    part_particles_create(global.particle_system,x,y, global.pt_rundust, 1);
}

if  sprite_index = spr_Oenn_Running
and (image_index = 2 or image_index = 5)
and image_xscale = 2
and place_meeting(x,y+1,obj_floor)
and image_xscale < 0
{
    audio_play_sound(snd_Oenn_Running,10,0);
    part_particles_create(global.particle_system,x,y, global.pt_rundustleft, 1);
}
