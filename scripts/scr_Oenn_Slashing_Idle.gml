// Input

Key_Up   =   gamepad_button_check(global.cp,gp_padu) or keyboard_check(vk_up) or v_move < -0.4;
Key_Down   =   gamepad_button_check(global.cp,gp_padd) or keyboard_check(vk_down) or v_move > 0.4;
Key_SlashPressed    =   gamepad_button_check_pressed(global.cp,gp_face4) or keyboard_check_pressed(ord('S'));
Key_Slash    =   gamepad_button_check(global.cp,gp_face4) or keyboard_check(ord('S'));
Key_SlashRelease    =   gamepad_button_check_released(global.cp,gp_face4) or keyboard_check_released(ord('S'));

// Movement

hsp = 0; // was off ?? why??

/*
if image_index < 1 
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
if image_index >= 2
{
    hsp = 0;
}
*/
// Idle
if sprite_index = spr_Oenn_Idle_Slash
and image_index = 2
{
    instance_create(x,y,obj_Slash_Small_Trail);
    with (instance_create(x,y,obj_Slash_Small)) //Bullet creation
    {
        side = 1;
        sprite_index = spr_Slash_Small;
    }
}

// Up
if sprite_index = spr_Oenn_Idle_SlashUp
and image_index = 2
{
    instance_create(x,y,obj_Slash_Small_Up_Trail);
    with (instance_create(x,y-4,obj_Slash_Small)) //Bullet creation
    {
        up = 1;
        sprite_index = spr_Slash_Small_Up;
    }
}

// Crouch
if sprite_index = spr_Oenn_Crouch_Slash
and image_index = 2
{
    //instance_create(x,y,obj_Slash_Small_Up_Trail);
    with (instance_create(x,y+7,obj_Slash_Small)) //Bullet creation
        {
            crouch = 1;
            sprite_index = spr_Slash_Small;
            image_yscale = .5;
        }
        with instance_create(x,y+7,obj_Slash_Small_Trail)
        {
            image_yscale = .5;
        }
}

// Create Slash
if !instance_exists(obj_Slash_Small) and can_slash = 1 and slash_button_pressed = 1
and !instance_exists(obj_Slash_Small_Up_Trail)
and !instance_exists(obj_Slash_Small_Trail)
{
    // Normal Slash
    if !Key_Up and !Key_Down and !instance_exists(obj_Slash_Small_Up_Trail)
    {
        sprite_index = spr_Oenn_Idle_Slash;
        //instance_create(x,y,obj_Slash_Small_Trail);
        //with (instance_create(x,y,obj_Slash_Small)) //Bullet creation
                            //{
                            //side = 1;
                            //sprite_index = spr_Slash_Small;
                            //}
                            
    }
    // Up Slash
    if Key_Up and !instance_exists(obj_Slash_Small_Trail)
    //and sprite_index != spr_Oenn_Idle_SlashUp
    {
        sprite_index = spr_Oenn_Idle_SlashUp;
        /*instance_create(x,y,obj_Slash_Small_Up_Trail);
        with (instance_create(x,y-4,obj_Slash_Small)) //Bullet creation
                                {
                                up = 1;
                                sprite_index = spr_Slash_Small_Up;
                                }*/
    }
    // Crouch Slash
    if Key_Down and !instance_exists(obj_Slash_Small_Trail)
    {
        sprite_index = spr_Oenn_Crouch_Slash;
        /*with (instance_create(x,y+7,obj_Slash_Small)) //Bullet creation
        {
            crouch = 1;
            sprite_index = spr_Slash_Small;
            image_yscale = .5;
        }
        with instance_create(x,y+7,obj_Slash_Small_Trail)
        {
            image_yscale = .5;
        }*/
    }
    
    alarm[2] = 15; // Reset Can Slash
    can_slash = 0;
}

if /*Key_SlashRelease or*/ !instance_exists(obj_Slash_Small) 
{
    //state = states.idle;
}

// START COMBO SLASHES
if can_move = 1 and !Key_Up
{
    if sprite_index = spr_Oenn_Idle_Slash and image_index > 2 
    and global.Oenn_stamina > 0
    and !instance_exists(obj_Slash_Combo_2)
    and Key_SlashPressed
    {
        obj_Oenn_Legs.image_index = 0;
        sprite_index = spr_Oenn_SlashCombo_1;
        mask_index = spr_Oenn_Collision_Mask;
        state = states.slashing_combo;
        slash_combo = 0;
        //alarm[3] = 10;
    }
    
    with (par_Enemy)
    {
        cb_slashed_combo_1 = 1;
        cb_slashed_combo_2 = 1;
    }
    
    with (par_Slashable_EnemyPart)
    {
        cb_slashed_combo_1 = 1;
        cb_slashed_combo_2 = 1;
    }
}

if Key_SlashRelease
{
    slash_button_pressed = 1;
}

// Locked

if lock = 1
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
    
