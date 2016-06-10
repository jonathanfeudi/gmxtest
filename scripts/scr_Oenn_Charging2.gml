// Inputs

Key_RTrig   =   gamepad_button_check(global.cp,gp_shoulderrb) or keyboard_check(ord('R'));
Key_RTrigPressed   =   gamepad_button_check_pressed(global.cp,gp_shoulderrb) or keyboard_check_pressed(ord('R'));
Key_RTrigReleased   =   gamepad_button_check_released(global.cp,gp_shoulderrb) or keyboard_check_released(ord('R'));

sprite_index = spr_Oenn_Charging;

if Key_RTrig
{
    scr_Flash_Pulse();
}


// Chargin

if charging < 75
{
    charging += .85;
}

if charging >= 75
{
    charged = 2;
    charging = 0;
    
}
/*
if charging > 73 and charging < 75
{
    obj_Oenn_Legs.image_index = 0;
    flash_timer = flash_duration;
    //audio_play_sound(snd_Charged,10,0);
    audio_play_sound(snd_Charged_Lo,10,0);
    part_particles_create(global.particle_system, x, y, global.pt_Oenn_Charged, 15);
}*/

if charged = 2
{
    if !instance_exists(obj_ChargeExplosion)
    {
        instance_create(x,y,obj_ChargeExplosion);
    }
    sprite_index = spr_Oenn_Charged;
    //flash_timer = flash_duration;
    global.shake = 35;
    global.flash_pulse = 200;
    audio_stop_sound(snd_Oenn_Shield);
    obj_Oenn_Legs.image_index = 0;
    flash_timer = flash_duration;
    //audio_play_sound(snd_Charged,10,0);
    audio_play_sound(snd_Charged_Lo,10,0);
    part_particles_create(global.particle_system, x, y, global.pt_Oenn_Charged, 15);
    state = states.charged;
}

// Stop Charging

if Key_RTrigReleased and charged != 2
{
    charging = 0;
    state = states.idle;
    global.flash_pulse = 200;
    audio_stop_sound(snd_Charging);
}

if lock = 1
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
