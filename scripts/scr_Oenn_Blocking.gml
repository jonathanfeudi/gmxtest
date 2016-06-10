// Getting Inputs

Key_B    =   gamepad_button_check(global.cp,gp_face2) or keyboard_check(ord('G'));
Key_BPressed    =   gamepad_button_check_pressed(global.cp,gp_face2) or keyboard_check_pressed(ord('G'));
Key_BRelease    =   gamepad_button_check_released(global.cp,gp_face2) or keyboard_check_released(ord('G'));

// Blocking

sprite_index = spr_Oenn_Blocking;

if !instance_exists(obj_Oenn_Shield)
{
    instance_create(x,y,obj_Oenn_Shield);
}

hsp = 0;

if Key_BRelease
{
    obj_Oenn_Legs.image_index = 0;
    state = states.blockingend;
}

// Reset Arm Out

arm_out = 0;

// Falling

if vsp >= 1
{
    sprite_index = spr_Oenn_JumptoFall;
    obj_Oenn_Legs.image_index = 0;
    state = states.falling;
}

// Exhaust

if global.Oenn_stamina <= .08
{
    global.Oenn_stamina = 0;
    stamina_recovery = 0;
    alarm[4] = 2.5*room_speed;
    alarm[5] = 3*room_speed;
    state = states.stunned;
}

//Collision

scr_Collision_Gravity();
