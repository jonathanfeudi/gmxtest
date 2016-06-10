// Get Inputs

scr_Inputs();

// Reset Falling and Stopping Amount

fallstopamount = 0;
runstopamount = 0;

// Create Slash
if !instance_exists(obj_Slash_Small) and can_slash = 1 and slash_button_pressed = 1
and !Key_RBump
{
    // Normal Slash
    if !Key_Up and !Key_Down
    {
        sprite_index = spr_Oenn_Jumping_Slash;
        instance_create(x,y,obj_Slash_Small_Trail);
        with (instance_create(x,y,obj_Slash_Small)) //Bullet creation
                            {
                            side = 1;
                            sprite_index = spr_Slash_Small;
                            }
    }
    // Up Slash
    if Key_Up 
    {
        sprite_index = spr_Oenn_Jumping_SlashUp;
        instance_create(x,y,obj_Slash_Small_Up_Trail);
        with (instance_create(x,y-4,obj_Slash_Small)) //Bullet creation
                                {
                                up = 1;
                                sprite_index = spr_Slash_Small_Up;
                                }
    }
    // Down Jump Slash
    if Key_Down
    {
        sprite_index = spr_Oenn_Jumping_SlashDown;
        instance_create(x,y,obj_Slash_Small_Down_Trail);
        with (instance_create(x,y+7,obj_Slash_Small)) //Bullet creation
                                {
                                down = 1;
                                sprite_index = spr_Slash_Small_Down;
                                image_yscale = 1;
                                
                                }
    }
    
    alarm[2] = 15; // Reset Can Slash
    can_slash = 0;
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

if Key_SlashRelease or !instance_exists(obj_Slash_Small) 
{
    state = states.jumping;
}

if Key_SlashRelease
{
    slash_button_pressed = 1;
}


// Landing
if ((round(place_meeting(x,y+1,par_wall))) 
or (round(place_meeting(x,y+1,par_Platform))))  
and !Walking
{
    state = states.idle;
}

if ((round(place_meeting(x,y+1,par_wall)))
or (round(place_meeting(x,y+1,par_Platform)))) 
and Walking
{
    state = states.running;
}

if ((round(place_meeting(x,y+1,par_wall))) 
and (round(place_meeting(x,y+1,par_Platform))))
and Running
{
    state = states.running;
}

// Horizontal Movement While Jumping

// Slow

move = Key_Left + Key_Right; 

//hsp = (move * movespeed)/global.enemy_slowmo;
hsp = (move * (runspeed))/global.enemy_slowmo;

// Fast

if Key_RTrig
{
    hsp = (move * (runspeed))/global.enemy_slowmo;
}

// Locked

if lock = 1
{
    state = states.idle;
}

//Collision

scr_Collision_Gravity();
