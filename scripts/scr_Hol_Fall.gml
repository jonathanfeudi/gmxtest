// Fall

var f;
f = 1;

if f > 0  and f < 6
{
    f += 1;
}

if f < 5
{
    f = 0
}

x += f;
y += 6;
image_speed = 0;
sprite_index = spr_Hol_Fall;


// Land

if room = room_IntroStage_3
{
    if place_meeting(x,y+1,par_wall)
    {
        image_speed = animation;
        state = 'land';
        audio_play_sound(snd_Block_Landing,10,0);
        with instance_create(x-16,y,obj_Oenn_Dust)
        {
            image_xscale = obj_Hol.image_xscale;
        }
        with instance_create(x+16,y,obj_Oenn_Dust)
        {
            image_xscale = -(obj_Hol.image_xscale);
        }
    }
}
