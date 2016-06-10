// Getting Inputs

scr_Inputs();

// Enter

Flip = 1;
/*
if !instance_exists(obj_room_fade_in)
and enterdust = 1
{
    instance_create(x,y,obj_room_fade_in);
}*/

sprite_index = spr_Oenn_ENTER;

if place_meeting(x,y+1,par_wall) and enterdust = 1
and enterfirst = 1
{
    with (instance_create(x+6,y,obj_Oenn_Dust))
    {
        direction = 180;
        speed = 2;
    }
    with (instance_create(x+6,y,obj_Oenn_Dust))        
    {
        direction = 0;
        speed = 2;
    }
    global.shake = 15;
    audio_play_sound(snd_Block_Landing,10,0);
    enterdust = 0;
}

if place_meeting(x,y+1,par_wall)
{
    sprite_index = spr_Oenn_ENTER2;
    
}

/// EYE NOISE IS IN LEGS... For some reason could work here
// So is Leather Arm Sound

hsp = 0;


cbd = 1;


//Collision

scr_Collision_Gravity();
