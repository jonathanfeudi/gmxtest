/// Collisions and Gravity

//Gravity

if (vsp < 5) and enemy_state != enemy_states.enemy_damaged
{
    vsp += grav;
}

/*
//Horizontal Collision

if (place_meeting((x+hsp),(y),par_wall))
{
    while(!place_meeting((x+sign(hsp)),(y),par_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
*/

///* //////////////////// WORKING SLOPE CODE  Need to make it work the other direction however... promising.
if round(place_meeting((x+hsp*2),(y),par_wall))
{
    yplus = 0;
    
    while(place_meeting(x+hsp,y-yplus,par_wall) && yplus <= abs(1*hsp)) yplus += 1;
    if place_meeting(x+hsp,y-yplus,par_wall)
    {
    while round(!place_meeting((x+sign(hsp)),(y),par_wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
    }
    else
    {
        y -= yplus
    }
}//*/
//Down Slope Code
else                                                                      //If there isn't something in the way, check for down slope
{
    yplus = 3;     //5                                                  //Initialize yplus to maximum slope                                                         
    while(place_meeting(x+hsp,y+yplus,par_wall)) && (yplus >0)
    //and state != states.jumping
   //and state != states.falling
    {
        yplus -= 1;                                                      //While there's a block at max_slp, keep checking one pixel above it
    }
    if (!place_meeting(x+hsp,y+yplus,par_wall))                          //If there's an empty space at yplus...                               
        {
        if (place_meeting(x+hsp,y+yplus+1,par_wall))                     //Check to see if there's a block beneath it, and if there is....             
            {
                y+=yplus;                                                     //Go there
            }
        }
    
}

//Horizontal Collision with Crystal Wall

if (place_meeting((x+hsp),(y),obj_Crystal_Wall))
{
    while round(!place_meeting((x+sign(hsp)),(y),obj_Crystal_Wall))
    {
        x += sign(hsp);
    }
    hsp = 0;
}

x += floor(hsp);


//Vertical Collision Floor

if (place_meeting((x),ceil(y+vsp),par_wall))
{
    while(!place_meeting((x),ceil(y+sign(vsp)),par_wall))
    {
        y += ceil(sign(vsp));
    }
    vsp = 0;
    
    if enemy_state = enemy_states.enemy_running
    {
        if (edgestop = 1) and hsp > 0 
        and ((position_meeting(x+((sprite_width/4)*sign(-dir)), y+(sprite_height/4)+48,obj_DontFall))
        and (position_meeting(x+((sprite_width/4)*sign(-dir)), y+(sprite_height/4)+48,obj_DontFall)))
        {
            enemy_state = enemy_states.enemy_idle;
            can_run = 0;
            alarm[2] = room_speed*.5;
        }
         if (edgestop = 1) and hsp < 0 
         and ((position_meeting(x+((sprite_width/4)*sign(dir)), y+(sprite_height/4)+48,obj_DontFall)) 
         and (position_meeting(x+((sprite_width/4)*sign(dir)), y+(sprite_height/4)+48,obj_DontFall))) 
         //and COV.on = 0
        {
            enemy_state = enemy_states.enemy_idle;
            can_run = 0;
            alarm[2] = room_speed*.5;
        }
    }
    
    if enemy_state = enemy_states.enemy_walking
    {
        if (edgestop = 1) and hsp > 0 
        and ((position_meeting(x+((sprite_width/4)*sign(-dir)), y+(sprite_height/4)+16,obj_DontFall))
        and (position_meeting(x+((sprite_width/4)*sign(-dir)), y+(sprite_height/4)+16,obj_DontFall)))
        {
            dir *= -1;
        }
         if (edgestop = 1) and hsp < 0 
         and ((position_meeting(x+((sprite_width/4)*sign(dir)), y+(sprite_height/4)+16,obj_DontFall)) 
         and (position_meeting(x+((sprite_width/4)*sign(dir)), y+(sprite_height/4)+16,obj_DontFall))) 
         //and COV.on = 0
        {
            dir *= -1;
        }
    }
        
}


//Vertical Collision Platforms
/*
if (place_meeting((x),round(y+vsp),obj_Ghost_Platform))
{
    while(!place_meeting((x),(y+sign(vsp)),obj_Ghost_Platform))
    {
        y += sign(vsp);
    }
    vsp = 0;
    if (edgestop = 1) and hsp > 0 and !position_meeting(x+((sprite_width/4)*sign(-dir)), y+(sprite_height/4)+16,obj_Ghost_Platform)
    {
        enemy_state = enemy_states.enemy_idle;
        can_run = 0;
        alarm[2] = room_speed*2;
    }
     if (edgestop = 1) and hsp < 0 and !position_meeting(x+((sprite_width/4)*sign(dir)), y+(sprite_height/4)+16,obj_Ghost_Platform)
    {
        enemy_state = enemy_states.enemy_idle;
        can_run = 0;
        alarm[2] = room_speed*2;
    }
    
}
*/
y += ceil(vsp);
