
//Inputs Gamepad

h_move = gamepad_axis_value(global.cp, gp_axislh);  // Defining variable h_move as horizontal input from left stick
v_move = gamepad_axis_value(global.cp, gp_axislv);  // This one is vertical movement from left stick

Key_Left    =   -(gamepad_button_check(global.cp,gp_padl) or keyboard_check(vk_left) or h_move < -0.4);
//Key_Left    =   -(gamepad_button_check(global.cp,gp_padl) or keyboard_check(vk_left)) or h_move < -0.4;
Key_Right   =   gamepad_button_check(global.cp,gp_padr) or keyboard_check(vk_right) or h_move > 0.4;
Key_Up   =   gamepad_button_check(global.cp,gp_padu) or keyboard_check(vk_up) or v_move < -0.4;
Key_Down   =   gamepad_button_check(global.cp,gp_padd) or keyboard_check(vk_down) or v_move > 0.4;
Key_Jump    =   gamepad_button_check(global.cp,gp_face1) or keyboard_check(ord('V')) or keyboard_check(vk_space);
Key_Shot    =   gamepad_button_check(global.cp,gp_face3) or keyboard_check(ord('A'));
Key_Slash    =   gamepad_button_check(global.cp,gp_face4) or keyboard_check(ord('S'));
Key_B    =   gamepad_button_check(global.cp,gp_face2) or keyboard_check(ord('G'));
Key_LBump   =   gamepad_button_check(global.cp,gp_shoulderl) or keyboard_check(ord('W'));
Key_RBump   =   gamepad_button_check(global.cp,gp_shoulderr) or keyboard_check(ord('E'));
Key_LTrig   =   gamepad_button_check(global.cp,gp_shoulderlb) or keyboard_check(ord('Q'));
Key_RTrig   =   gamepad_button_check(global.cp,gp_shoulderrb) or keyboard_check(ord('R'));

Stick_UpRight = (v_move < -0.2) and (h_move > 0.4);
Stick_UpLeft = (v_move < -0.2) and (h_move < -0.4);
Stick_DownRight = (v_move > 0.2) and (h_move > 0.4);
Stick_DownLeft = (v_move > 0.2) and (h_move < -0.4);

Key_RStick    =     gamepad_axis_value(global.cp,gp_axisrv)

No_Stick = (h_move >= -0.3 and h_move <= 0.3)

Key_BPressed    =   gamepad_button_check_pressed(global.cp,gp_face2) or keyboard_check_pressed(ord('G'));
Key_SlashPressed    =   gamepad_button_check_pressed(global.cp,gp_face4) or keyboard_check_pressed(ord('S'));
Key_LeftPressed    =   gamepad_button_check_pressed(global.cp,gp_padl) or keyboard_check_pressed(vk_left);
Key_RightPressed   =   gamepad_button_check_pressed(global.cp,gp_padr) or keyboard_check_pressed(vk_right);
Key_UpPressed   =   gamepad_button_check_pressed(global.cp,gp_padu) or keyboard_check_pressed(vk_up);
Key_DownPressed   =   gamepad_button_check_pressed(global.cp,gp_padd) or keyboard_check_pressed(vk_down);
Key_JumpPressed    =   gamepad_button_check_pressed(global.cp,gp_face1) or keyboard_check_pressed(ord('V')) or keyboard_check_pressed(vk_space);
Key_ShotPressed    =   gamepad_button_check_pressed(global.cp,gp_face3) or keyboard_check_pressed(ord('A'));
Key_LBumpPressed   =   gamepad_button_check_pressed(global.cp,gp_shoulderl) or keyboard_check_pressed(ord('W'));
Key_RBumpPressed   =   gamepad_button_check_pressed(global.cp,gp_shoulderr) or keyboard_check_pressed(ord('E'));

Key_UpRelease   =   gamepad_button_check_released(global.cp,gp_padu) or keyboard_check_released(vk_up);
Key_ShotRelease    =   gamepad_button_check_released(global.cp,gp_face3) or keyboard_check_released(ord('A'));
Key_SlashRelease    =   gamepad_button_check_released(global.cp,gp_face4) or keyboard_check_released(ord('S'));
Key_JumpRelease    =  gamepad_button_check_released(global.cp,gp_face1) or keyboard_check_released(ord('V')) or keyboard_check_released(vk_space);
Key_BRelease    =   gamepad_button_check_released(global.cp,gp_face2) or keyboard_check_released(ord('G'));
Key_RTrigRelease   =   gamepad_button_check_released(global.cp,gp_shoulderrb) or keyboard_check_released(ord('R'));
Key_LBumpRelease   =   gamepad_button_check_released(global.cp,gp_shoulderl) or keyboard_check_released(ord('W'));


DDR   =   ((Key_Right)&&(Key_Down))
DDL    =   ((Key_Left)&&(Key_Down))
DUR   =   ((Key_Right)&&(Key_Up))
DUL    =   ((Key_Left)&&(Key_Up))

Walking = (-Key_Left or Key_Right) 
Running = (-Key_Left or Key_Right) and Key_RTrig

IDLE = (!Walking or !Running)

SHOOTING = (state = states.shooting_idle 
or state = states.shooting_walking 
or state = states.shooting_running
or state = states.shooting_jumping)

//Key_RStick    =     gamepad_axis_value(global.cp,gp_axisrv);

Key_RStickButton    =     gamepad_button_check_pressed(global.cp,gp_stickr);

Key_Start    =     gamepad_button_check_pressed(global.cp,gp_start) or keyboard_check_pressed(vk_enter);
