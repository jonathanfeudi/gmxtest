// Inputs
h_move = gamepad_axis_value(global.cp, gp_axislh);  // Defining variable h_move as horizontal input from left stick
v_move = gamepad_axis_value(global.cp, gp_axislv);  // This one is vertical movement from left stick


Key_JumpPressed    =   gamepad_button_check_pressed(global.cp,gp_face1) or keyboard_check(vk_space);

Key_Left    =   -(gamepad_button_check(global.cp,gp_padl) or keyboard_check(vk_left) or h_move < -0.4);
Key_Right   =   gamepad_button_check(global.cp,gp_padr) or keyboard_check(vk_right) or h_move > 0.4;

Key_LeftPressed    =   gamepad_button_check_pressed(global.cp,gp_padl) or keyboard_check_pressed(vk_left);
Key_RightPressed   =   gamepad_button_check_pressed(global.cp,gp_padr) or keyboard_check_pressed(vk_right);

Key_LeftReleased   =   gamepad_button_check_released(global.cp,gp_padl) or keyboard_check_released(vk_left);
Key_RightReleased   =   gamepad_button_check_released(global.cp,gp_padr) or keyboard_check_released(vk_right);

Key_LBump   =   gamepad_button_check(global.cp,gp_shoulderl) or keyboard_check(ord('W'));
Key_LBumpPressed   =   gamepad_button_check_pressed(global.cp,gp_shoulderl) or keyboard_check_pressed(ord('W'));
Key_LBumpRelease   =   gamepad_button_check_released(global.cp,gp_shoulderl) or keyboard_check_released(ord('W'));

No_Stick = (h_move >= -0.3 and h_move <= 0.3)

/// ID BLOCK PULLING

BLOCK = instance_nearest(x,y,par_Push_Block);

// Pulling



if (!Key_Right and !-Key_Left)
or (Key_Right and -Key_Left) // no - sign
or (image_xscale = -1 and -Key_Left)
or (image_xscale = 1 and Key_Right)

{
    sprite_index = spr_Oenn_Pull_Ready;
    hsp = 0;
    with instance_nearest(x,y,par_Push_Block)
        {
            hsp = 0;
        }
}

if place_meeting(x-12,y,par_Push_Block) 
{
    if Key_Right and !(-Key_Left)
    {
        image_xscale = -1;
        sprite_index = spr_Oenn_Pulling;
        hsp = 1/global.enemy_slowmo;
    }
    
    if -Key_Left and !Key_Right //and Key_LBump
    {
        state = states.pushing;
    }
}

if place_meeting(x+12,y,par_Push_Block) 
{
    if -Key_Left and !Key_Right
    {
        image_xscale = 1;
        sprite_index = spr_Oenn_Pulling;
        hsp = -1/global.enemy_slowmo;
    }
    
    if !(-Key_Left) and Key_Right //and Key_LBump
    {
        state = states.pushing;
    }
}



if image_xscale = 1 and Key_Right
{
    hsp = 0;
}

if image_xscale = -1 and -Key_Left
{
    hsp = 0;
}

// Back to Idle

if !Key_LBump or distance_to_object(BLOCK) > 12
{
    state = states.idle;
}

// Jumping

if Key_JumpPressed and jumps > 0
{
        state = states.jumping;
        audio_play_sound(snd_Oenn_Jump,10,0);
        instance_create(x,y,obj_Oenn_Dust);
        vsp = (-jumpspeed)/global.enemy_slowmo; // jumps up
        jumps -= 1; // subtracts 1 from available jumps
}

// Falling
if vsp >= 1
{
    state = states.falling;
}

if vsp < 0
{
    state = states.jumping;
}

// Can Be Pushed

if pushable = 0
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
