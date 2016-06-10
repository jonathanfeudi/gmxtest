sprite_index = spr_Bonnet_Fly;

image_speed = 1/4;

if fly_direction > 0
{
    image_xscale = 1;
    x -= 4;
    y -= 5;
}

if fly_direction < 0
{
    image_xscale = -1;
    x += 4;
    y -= 5;
}

if fly = 0
{
    audio_play_sound(snd_BirdFlap,10,0);
    audio_play_sound(snd_BirdFlap,10,0);
    fly = 1;
}
