// Death

hsp = 0;
vsp = 0;

cbd = 1;


if place_meeting(x,y+1,par_wall)
{
    sprite_index = spr_Oenn_Death;
}
else
{
    sprite_index = spr_Oenn_Death_Air;
}


if image_index = 19
{
    /// Stop Music
    audio_stop_all();
    game_restart();
}
