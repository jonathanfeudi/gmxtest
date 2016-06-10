// Getting Inputs

Key_B    =   gamepad_button_check(global.cp,gp_face2) or keyboard_check(ord('G'));
Key_BPressed    =   gamepad_button_check_pressed(global.cp,gp_face2) or keyboard_check_pressed(ord('G'));
Key_BRelease    =   gamepad_button_check_released(global.cp,gp_face2) or keyboard_check_released(ord('G'));

Key_Left    =   -(gamepad_button_check(global.cp,gp_padl) or keyboard_check(vk_left) or h_move < -0.4);
Key_Right   =   gamepad_button_check(global.cp,gp_padr) or keyboard_check(vk_right) or h_move > 0.4;

Key_UpPressed   =   gamepad_button_check_pressed(global.cp,gp_padu) or keyboard_check_pressed(vk_up) or v_move < -0.4;
Key_Down   =   gamepad_button_check(global.cp,gp_padd) or keyboard_check(vk_down) or v_move > 0.4;

//Key_LTrig   =   gamepad_button_check(global.cp,gp_shoulderlb) or keyboard_check(ord('Q'));

Key_RTrig   =   gamepad_button_check(global.cp,gp_shoulderrb) or keyboard_check(ord('R'));

// Blocking

sprite_index = spr_Oenn_FightingStance;


hsp = 0;

// Dash Left
if can_move = 1
{
if -Key_Left
and (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform) or place_meeting(x,y+1,obj_Crystal_Wall))
and can_dashL = 1
and global.Oenn_stamina > 0
{
    obj_Oenn_Legs.image_index = 0;
    //audio_play_sound(snd_Charged,10,0);
    audio_play_sound(snd_Dash,10,0);
    global.Oenn_stamina -= 18; //15 = 1 bar
    if image_xscale < 0 
    {
        sprite_index = spr_Oenn_Dashing;
    }
    if image_xscale > 0 
    {
        sprite_index = spr_Oenn_Dashing_Back;
    }
    flash_timer = 13.5;
    state = states.dashingleft;
    instance_deactivate_object(par_Hazard);
}  
}
// Dash Right
if can_move = 1
{
if Key_Right
and (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform) or place_meeting(x,y+1,obj_Crystal_Wall))
and can_dashR = 1
and global.Oenn_stamina > 0
{
    obj_Oenn_Legs.image_index = 0;
    if image_xscale > 0 
    {
        sprite_index = spr_Oenn_Dashing;
    }
    if image_xscale < 0 
    {
        sprite_index = spr_Oenn_Dashing_Back;
    }
    //audio_play_sound(snd_Charged,10,0);
    audio_play_sound(snd_Dash,10,0);
    global.Oenn_stamina -= 18; // 15 = 1 bar
    flash_timer = 13.5;
    state = states.dashingright;
    instance_deactivate_object(par_Hazard);
}
}

// Stamina Charge
if can_move = 1
{
    if Key_UpPressed 
    and !Key_Shot and !Key_Slash and !Key_B
    and !Key_Down and !Key_Right and !Key_Left
    and !Key_LBump 
    and !Key_RBump //and !Key_B
    and !Key_Jump 
    and (place_meeting(x,y+1,par_wall) or place_meeting(x,y+1,par_Platform) or place_meeting(x,y+1,obj_Crystal_Wall))
    and can_stamcharge = 1
    and global.Oenn_stamina > 0
    and global.Oenn_stamina != global.Oenn_staminaMAX
    {
        obj_Oenn_Legs.image_index = 0;
        audio_play_sound(snd_Charged,10,0);
        audio_play_sound(snd_Charged_Collision,10,0);
        global.stamcharge = 1;
        state = states.stam_charge;
        can_stamcharge = 0;
        obj_Oenn_Legs.alarm[1] = room_speed * 60; // Can Again//60
        obj_HUD.alarm[4] = room_speed * 60; // Shine HUD
        global.shake = 15;
        
        //Particle Emitter
        Stam_Charge_Aura = part_emitter_create(global.particle_system);  // Emitter Created
    
        part_emitter_region(global.particle_system,Stam_Charge_Aura,bbox_left-12,bbox_right+12,bbox_top,bbox_bottom,ps_shape_rectangle,ps_distr_linear);
    
        part_emitter_stream(global.particle_system,Stam_Charge_Aura,global.pt_Saving,-1);
    
        //Particles
        part_particles_create(global.particle_system, x, y, global.pt_Oenn_Attack_Collision, 20);
        
        ///// Dust
        
        // Right
        if image_xscale > 0
        {
        with (instance_create(x,y,obj_Oenn_Dust))
        {
            direction = 180;
            speed = 2;
        }
        with (instance_create(x,y,obj_Oenn_Dust))        
        {
            image_xscale = -(obj_Oenn_Body.image_xscale/2)
            direction = 0;
            speed = 2;
        }
        }
        // Left
        if image_xscale < 0
        {
        with (instance_create(x,y,obj_Oenn_Dust))
        {
            image_xscale = -(obj_Oenn_Body.image_xscale/2)
            direction = 180;
            speed = 2;
        }
        with (instance_create(x,y,obj_Oenn_Dust))        
        {
            direction = 0;
            speed = 2;
        }
        }   
    }
}




if !Key_RTrig
{
    state = states.idle;
}

// Falling

if vsp >= 1
{
    state = states.falling;
}

//Collision

scr_Collision_Gravity();
