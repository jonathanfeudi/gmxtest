// Inputs

h_move = gamepad_axis_value(global.cp, gp_axislh);  // Defining variable h_move as horizontal input from left stick
v_move = gamepad_axis_value(global.cp, gp_axislv);  // This one is vertical movement from left stick


Key_JumpPressed    =   gamepad_button_check_pressed(global.cp,gp_face1) or keyboard_check(vk_space);

Key_Left    =   -(gamepad_button_check(global.cp,gp_padl) or keyboard_check(vk_left));
Key_Right   =   gamepad_button_check(global.cp,gp_padr) or keyboard_check(vk_right);

Key_LeftPressed    =   gamepad_button_check_pressed(global.cp,gp_padl) or keyboard_check_pressed(vk_left);
Key_RightPressed   =   gamepad_button_check_pressed(global.cp,gp_padr) or keyboard_check_pressed(vk_right);

Key_LeftReleased   =   gamepad_button_check_released(global.cp,gp_padl) or keyboard_check_released(vk_left);
Key_RightReleased   =   gamepad_button_check_released(global.cp,gp_padr) or keyboard_check_released(vk_right);

//NoStick = h_move < 0.4 and h_move > -0.4;

No_Stick = (h_move >= -0.3 and h_move <= 0.3)

Key_LBump   =   gamepad_button_check(global.cp,gp_shoulderl) or keyboard_check(ord('W'));


// Pushing

sprite_index = spr_Oenn_Pushing;

if image_xscale = -1
{
    hsp = -1/global.enemy_slowmo;
}
else
{
    hsp = 1/global.enemy_slowmo;
}

// Back to Idle

if (Key_LeftReleased or Key_RightReleased)
//or (NoStick and (Key_LeftReleased or Key_RightReleased))
or (No_Stick and !Key_Right and !-Key_Left)
{
    if Key_LBump
    {
        state = states.pulling;
    }
    else
    {
        state = states.idle;
    }
}

/*
if NoStick and !-Key_Left and !Key_Right
{
    state = states.idle;
}

if hsp = 0 
{
    if Key_LBump
    {
        state = states.pulling;
    }
    else
    {
        state = states.idle;
    }
}
*/

// Jumping

if Key_JumpPressed and jumps > 0
{
        state = states.jumping;
        audio_play_sound(snd_Oenn_Jump,10,0);
        instance_create(x,y,obj_Oenn_Dust);
        vsp = (-jumpspeed)/global.enemy_slowmo; // jumps up
        jumps -= 1; // subtracts 1 from available jumps
        sprite_index = spr_Oenn_Jump;
}

if pushable = 0
{
    state = states.idle;
}

if !(place_meeting((x+4),(y),par_Push_Block))
and !(place_meeting((x-4),(y),par_Push_Block))
and !Key_LBump
{
    state = states.idle;
}

if !(place_meeting((x+12),(y),par_Push_Block))
and !(place_meeting((x-12),(y),par_Push_Block))
and Key_LBump
{
    state = states.idle;
}


//Collision

scr_Collision_Gravity();
