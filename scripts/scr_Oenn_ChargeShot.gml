// Getting Inputs

audio_stop_sound(snd_Oenn_Shield); /// stop charging sound
charging = 0; //// Reset Charge

if image_index <  9
{
    grav = 0;
}
if image_index >= 9
{
    grav += .075;
}

var pulse_dmg 

if charged = 1
{
    pulse_dmg = 12
}
if charged = 2
{
    pulse_dmg = 16
}

global.slowmo = 2; ///// SLOW DOWN TIME ... causing enemy objects to skip cues

cbd = 1;

// Recoils Friction
if hsp > 0
{
    hsp -= 1;
}

if hsp < 0
{
    hsp += 1;
}

if sprite_index = spr_Oenn_ChargeShot_Jump_Up
or sprite_index = spr_Oenn_ChargeShot_Jump_Down
{
    if image_index > 5
    {
        if vsp > 0
        {
            vsp -= 1;
        }
        
        if vsp < 0
        {
            vsp += 1;
        }
    }
    else
    {
        vsp = 0;
    }
}
else
{
    vsp = 0;
}

// Recoil Directions
if sprite_index = spr_Oenn_ChargeShot
or sprite_index = spr_Oenn_ChargeShot_DownDiag
or sprite_index = spr_Oenn_ChargeShot_UpDiag
{
    if image_index = 5
    {
        if image_xscale > 0
        and (place_meeting(x-32,y+2,par_Grounded)) 
        {
            hsp = -8;
        }
        
        if image_xscale < 0
        and (place_meeting(x+32,y+2,par_Grounded)) 
        {
            hsp = 8;
        }
    }
}

if sprite_index = spr_Oenn_ChargeShot_Jump
or sprite_index = spr_Oenn_ChargeShot_Jump_UpDiag
or sprite_index = spr_Oenn_ChargeShot_Jump_DownDiag
{
    if image_index = 5
    {
        if image_xscale > 0
        {
            hsp = -8;
        }
        
        if image_xscale < 0
        {
            hsp = 8;
        }
    }
}

if sprite_index = spr_Oenn_ChargeShot_Jump_Up
{
    if image_index = 5
    {
        vsp = 8;
    }
}

if sprite_index = spr_Oenn_ChargeShot_Jump_Down
{
    if image_index = 5
    {
        vsp = -8;
    }
}



//vsp = 0

 // Straight Shots 
    
if (sprite_index = spr_Oenn_ChargeShot
or sprite_index = spr_Oenn_ChargeShot_Jump)
and image_index = 5
{
    if image_xscale = 1
    {
        with (instance_create(x+14, y-4,obj_Pulse_Charged)) //Bullet creation
        {
            if pulse_dmg = 16
            {
                stage = 2;
            }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 0;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
        }
        with instance_create(x,y,obj_ChargeShot_Smoke)
        {
            speed = .5;
            direction = 0;
            image_xscale = 1;
            sprite_index = spr_Oenn_ChargeShot_Smoke;
        } 
    }
    if image_xscale = -1
    {
        with (instance_create(x-14, y-4,obj_Pulse_Charged)) //Bullet creation
        {
            if pulse_dmg = 16
                {
                    stage = 2;
                }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 180;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
        }
        with instance_create(x,y,obj_ChargeShot_Smoke)
        {
            speed = .5;
            direction = 180;
            image_xscale = -1;
            sprite_index = spr_Oenn_ChargeShot_Smoke;
        } 
    }
    can_shoot = 0;
    charged = 0;
    alarm[0] = 16;
}

// Up Shots 
    
if (sprite_index = spr_Oenn_ChargeShot_Up
or sprite_index = spr_Oenn_ChargeShot_Jump_Up)
//or sprite_index = spr_Oenn_ChargeShot_Jump)
and image_index = 5
{
    if image_xscale = 1
    {
        with (instance_create(x+7, y-8,obj_Pulse_Charged)) //Bullet creation
            {
            if pulse_dmg = 16
                {
                    stage = 2;
                }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 90;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
            }
            with instance_create(x,y,obj_ChargeShot_Smoke)
            {
                speed = .5;
                direction = 90;
                image_xscale = 1;
                sprite_index = spr_Oenn_ChargeShot_Up_Smoke;
            } 
        }
        if image_xscale = -1
        {
            with (instance_create(x-7, y-8,obj_Pulse_Charged)) //Bullet creation
                    {
                    if pulse_dmg = 16
                        {
                            stage = 2;
                        }
                    dmg = pulse_dmg;
                    speed = (8/global.enemy_slowmo); //Bullet Speed
                    direction = 90;  //Bullet Direction
                    //direction = other.image_angle;
                    image_angle = direction; //Bullet image angle rotation
                    }
            with instance_create(x,y,obj_ChargeShot_Smoke)
            {
                speed = .5;
                direction = 90;
                image_xscale = -1;
                sprite_index = spr_Oenn_ChargeShot_Up_Smoke;
            } 
        }    
    can_shoot = 0;
    charged = 0;
    alarm[0] = 16;
}

// Up Diagnal

if (sprite_index = spr_Oenn_ChargeShot_UpDiag
or sprite_index = spr_Oenn_ChargeShot_Jump_UpDiag)
and image_index = 5
{
    if image_xscale = 1
    {
        with (instance_create(x+16, y-10,obj_Pulse_Charged)) //Bullet creation
        {
            if pulse_dmg = 16
            {
                stage = 2;
            }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 45;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
        }
        with instance_create(x,y,obj_ChargeShot_Smoke)
        {
            speed = .5;
            direction = 45;
            image_xscale = 1;
            sprite_index = spr_Oenn_ChargeShot_UpDiag_Smoke;
        } 
    }
    if image_xscale = -1
    {
        with (instance_create(x-16, y-10,obj_Pulse_Charged)) //Bullet creation
        {
            if pulse_dmg = 16
            {
                stage = 2;
            }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 135;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
        }
        with instance_create(x,y,obj_ChargeShot_Smoke)
        {
            speed = .5;
            direction = 135;
            image_xscale = -1;
            sprite_index = spr_Oenn_ChargeShot_UpDiag_Smoke;
        } 
    }
    can_shoot = 0;
    charged = 0;
    alarm[0] = 16;
}

// Down Diagnal

if (sprite_index = spr_Oenn_ChargeShot_DownDiag
or sprite_index = spr_Oenn_ChargeShot_Jump_DownDiag)
and image_index = 5
{
    if image_xscale = 1
    {
        with (instance_create(x+14, y+5 ,obj_Pulse_Charged)) //Bullet creation
        {
            if pulse_dmg = 16
            {
                stage = 2;
            }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 315;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
        }
        with instance_create(x,y,obj_ChargeShot_Smoke)
        {
            speed = .5;
            direction = 315;
            image_xscale = 1;
            sprite_index = spr_Oenn_ChargeShot_DownDiag_Smoke;
        } 
    }
    if image_xscale = -1
    {
        with (instance_create(x-14, y+5,obj_Pulse_Charged)) //Bullet creation
        {
            if pulse_dmg = 16
            {
                stage = 2;
            }
            dmg = pulse_dmg;
            speed = (8/global.enemy_slowmo); //Bullet Speed
            direction = 225;  //Bullet Direction
            //direction = other.image_angle;
            image_angle = direction; //Bullet image angle rotation
        }
        with instance_create(x,y,obj_ChargeShot_Smoke)
        {
            speed = .5;
            direction = 225;
            image_xscale = -1;
            sprite_index = spr_Oenn_ChargeShot_DownDiag_Smoke;
        } 
    }
    can_shoot = 0;
    charged = 0;
    alarm[0] = 16;
}

// Down Shot
    
if (sprite_index = spr_Oenn_ChargeShot_Jump_Down)
and image_index = 5
{
    if image_xscale = 1
        {
             with (instance_create(x+9, y-8,obj_Pulse_Charged)) //Bullet creation
                    {
                    if pulse_dmg = 16
                        {
                            stage = 2;
                        }
                    dmg = pulse_dmg;
                    speed = (8/global.enemy_slowmo); //Bullet Speed
                    direction = 270;  //Bullet Direction
                    //direction = other.image_angle;
                    image_angle = direction; //Bullet image angle rotation
                    }
             with instance_create(x,y,obj_ChargeShot_Smoke)
            {
                speed = .5;
                direction = 270;
                image_xscale = 1;
                sprite_index = spr_Oenn_ChargeShot_Down_Smoke;
            } 
        }
        if image_xscale = -1
        {
            with (instance_create(x-9, y-8,obj_Pulse_Charged)) //Bullet creation
                    {
                    if pulse_dmg = 16
                        {
                            stage = 2;
                        }
                    dmg = pulse_dmg;
                    speed = (8/global.enemy_slowmo); //Bullet Speed
                    direction = 270;  //Bullet Direction
                    //direction = other.image_angle;
                    image_angle = direction; //Bullet image angle rotation
                    }
            with instance_create(x,y,obj_ChargeShot_Smoke)
            {
                speed = .5;
                direction = 270;
                image_xscale = -1;
                sprite_index = spr_Oenn_ChargeShot_Down_Smoke;
            } 
        }    
    can_shoot = 0;
    charged = 0;
    alarm[0] = 16;
}

//Collision

scr_Collision_Gravity();
