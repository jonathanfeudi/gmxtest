/// Variables

hsp = 0;

// Stop Sounds

audio_stop_sound(snd_Oenn_Shield);



sprite_index = spr_Oenn_Low_Health;

if charged < 1
{
    with obj_Charging_Aura1
    {
        instance_destroy();
    }
}

if charged < 2
{
    part_emitter_destroy(global.charge_aura,global.CA);
    with obj_Charging_Aura2
    {
        instance_destroy();
    }
}

/*if image_index = 0
or image_index = 4
or image_index = 8
or image_index = 12
or image_index = 16
or image_index = 20*/
if flash_timer <= 0
{
    flash_timer = flash_duration;
}
// Gravity and Collisions

scr_Collision_Gravity();
