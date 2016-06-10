// Hit

x -= 6;

sprite_index = spr_Hol_Punched;

// Land
if place_meeting(x-1,y,par_wall)
{
    instance_create(x,y,obj_ScreenFLashWhite)
    state = 'hurt';
    audio_play_sound(snd_Block_Landing,10,0);
    global.shake = 30;
    hurt = 1;
}
