/// ONLY INPUT IS SLASH

Key_SlashPressed    =   gamepad_button_check_pressed(global.cp,gp_face4) or keyboard_check_pressed(ord('S'));
Key_Slash    =   gamepad_button_check(global.cp,gp_face4) or keyboard_check(ord('S'));
Key_SlashRelease    =   gamepad_button_check_released(global.cp,gp_face4) or keyboard_check_released(ord('S'));

//// Making the Slash Objects

if sprite_index = spr_Oenn_SlashCombo_1
and image_index = 2
{
    instance_create(x,y,obj_Slash_Small_Trail2);
    instance_create(x,y,obj_Slash_Combo_1) //Slash creation
}

if sprite_index = spr_Oenn_SlashCombo_2
and image_index = 4
{
    instance_create(x,y,obj_Slash_Small_Trail_2);
    with (instance_create(x,y,obj_Slash_Combo_2)) 
    {
        if obj_Oenn_Body.image_xscale = 1//2
        {
            direction = 0;
            speed = 2;
            sprite_index = spr_Slash_Small;
        }
        if obj_Oenn_Body.image_xscale = -1//2
        {
            direction = 180;
            speed = 2;
            sprite_index = spr_Slash_Small;
        }
    }
    with (instance_create(x,y,obj_Oenn_Dust))
    {
        if obj_Oenn_Body.image_xscale = 1//2
            {
                direction = 180;
                speed = 2;
            }
            if obj_Oenn_Body.image_xscale = -1//2
            {
                direction = 0;
                speed = 2;
            }
    }
} 


/// Comboing
if can_move = 1
{
    if sprite_index = spr_Oenn_SlashCombo_1 and image_index > 2 
    and global.Oenn_stamina > 0
    and Key_SlashPressed
    {
        obj_Oenn_Legs.image_index = 0;
        sprite_index = spr_Oenn_SlashCombo_2;
        mask_index = spr_Oenn_Collision_Mask;
        slash_combo = 1;
        //alarm[3] = 10;
    }
}


// Movement
if image_index < 1 and sprite_index = spr_Oenn_SlashCombo_1
{
    if image_xscale > 0
    {
        hsp = 1;
    }
    if image_xscale < 0
    {
        hsp = -1;
    }
}
if image_index >= 2 and sprite_index = spr_Oenn_SlashCombo_1
{
    hsp = 0;
}

// 2
if (image_index > 2 or image_index < 5) and sprite_index = spr_Oenn_SlashCombo_2
{
    if image_xscale > 0
    {
        hsp = 1;
    }
    if image_xscale < 0
    {
        hsp = -1;
    }
}
if (image_index <= 2 or image_index >= 5) and sprite_index = spr_Oenn_SlashCombo_2
{
    hsp = 0;
}





// Locked

if lock = 1
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
