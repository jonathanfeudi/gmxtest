///draw_text(view_xview+250,view_yview+10,global.flash_pulse);

Key_LTrig   =   gamepad_button_check(global.cp,gp_shoulderlb) or keyboard_check(ord('Q'));


if Key_LTrig and charged < 2
{
    global.flash_pulse -= 1
}

if (global.flash_pulse = 199 or global.flash_pulse = 170 
or global.flash_pulse = 140 or global.flash_pulse = 110 
or global.flash_pulse = 90 or global.flash_pulse = 60/*
or global.flash_pulse = 50) or global.flash_pulse = 25*/)
{
    flash_timer = flash_duration;
}
