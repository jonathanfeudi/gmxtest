//Getting Inputs

scr_Inputs();

// Sprite

sprite_index = spr_Oenn_Walking_Slash;


if !instance_exists(obj_Slash_Small) and can_slash = 1 and slash_button_pressed = 1
{
    with (instance_create(x,y,obj_Slash_Small)) //Slash creation
                            {
                            side = 1;
                            sprite_index = spr_Slash_Small;
                            }
    instance_create(x,y,obj_Slash_Small_Trail);
    alarm[2] = 15; // Reset Can Slash
    can_slash = 0;
}

if Key_SlashRelease  // Resets So you can't hold slash and keep slashing
{
    slash_button_pressed = 1;
}

if /*Key_SlashRelease or*/ !instance_exists(obj_Slash_Small) 
{
    state = states.walking;
}

// Stop Walking Mid Slash

if !Walking
{
    state = states.idle;
}

// Horizontal Movement While Slashing

// Slow

move = Key_Left + Key_Right; 

hsp = (move * movespeed)/global.enemy_slowmo;

// Fast
/*
if Key_RTrig 
{
    //hsp = (move * (runspeed)/global.enemy_slowmo);
}*/

// Walking Slashing to (Running and Slashing)

if Running
{
    state = states.running;
}

// Falling

if vsp > 0
{
    state = states.jumping; 
}

// Locked

if lock = 1
{
    state = states.idle;
}


//Collision

scr_Collision_Gravity();
    
