//Gravity
if !instance_exists(obj_Hover_Vertical)   //// THIS IS GOING TO BE A PROBLEM  - enemies will not behave right
{
    if global.slowmo = 1
    {
        if (vsp < 5) vsp += (grav);
    }
    if global.slowmo = 2
    {
        if (vsp < 5) vsp += grav/1.75;     /// grav/4 if enemy slowmo
    }
}

// Horizontal Moving Platforms

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

//Horizontal Collision

/*
if round(place_meeting((x+hsp_final*2),(y),par_wall))
{
    while round(!place_meeting((x+sign(hsp_final)),(y),par_wall))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
    hsp = 0;
}*/

///* //////////////////// WORKING SLOPE CODE  Need to make it work the other direction however... promising.
if round(place_meeting((x+hsp_final*2),(y),par_wall))
{
    yplus = 0;
    
    while(place_meeting(x+hsp,y-yplus,par_wall) && yplus <= abs(1*hsp)) yplus += 1;
    if place_meeting(x+hsp,y-yplus,par_wall)
    {
    while round(!place_meeting((x+sign(hsp_final)),(y),par_wall))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
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
    and state != states.jumping
    and state != states.falling
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
//x +=hsp;

//Horizontal Collision with Crystal Wall

if round(place_meeting((x+hsp_final*2),(y),obj_Crystal_Wall))
{
    while round(!place_meeting((x+sign(hsp_final)),(y),obj_Crystal_Wall))
    {
        x += sign(hsp_final);
    }
    hsp_final = 0;
    hsp = 0;
}

x += floor(hsp_final);

// Vertical Moving Platforms

//var vsp_final = vsp + vsp_carry;
//vsp_carry = 0;



//Vertical Collision

//y = round(y); // NEW AND EXPERIMENTAL

if (place_meeting((x),ceil(y+vsp),par_wall))
{
    while (!place_meeting((x),ceil(y+sign(vsp)),par_wall))
    {
        y += ceil(sign(vsp));
    }
    vsp = 0;
}

//Vertical Collision PLATFORM

if !place_meeting(x,ceil(y+vsp),par_wall)
{
if (place_meeting((x),ceil(y+vsp),par_Platform))
{
    while (!place_meeting((x),(y+sign(vsp)),par_Platform))
    {
        y += sign(vsp);
    }
    vsp = 0;
}
}

//Vertical Collision Crystal Wall


if (place_meeting((x),ceil(y+vsp),obj_Crystal_Wall))
{
    /*while (!place_meeting((x),(y+sign(vsp)),obj_Crystal_Wall))
    {
        y += sign(vsp);
    }*/
    vsp = 0;
}


y = ceil(y)
y += ceil(vsp);
