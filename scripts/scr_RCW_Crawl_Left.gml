// Check if we've run out of floor
    //Check if you are moving towards a wall or a corner
    movespeed = dir/global.slowmo
    if (place_meeting(x - lengthdir_x(movespeed,direction - 90),y + lengthdir_y(movespeed,direction + 90),par_wall) = false) then
    //You hit a corner
    {    //Rotate the object so it moves along the edge    
    direction += 90;    
    //  Check to see which direction you are about to travel, and move the instance toward that corner    
    //  For example, if it is moving right, and there is a corner up ahead (A right turn, from the enemy's    
    //perspective), then it moves two pixels down, and two pixels left to stick itself back onto the block.    
    switch (direction)    
    {      
        case 180:         
            x -= speed;       
            //y -= speed;         
            break;      
    
        case 90:         
            //x += speed;         
            y -= speed;         
        break;      
        
        case 0:         
            x += speed;        
            //y += speed;        
        break;      
        
        case 270:         
           // x -= speed;         
            y += speed;      
        break;      
    }     
    //Attach to the block    
    
    scr_move_contact_obj(direction+90,movespeed,par_wall) 
    //move_contact_all(direction + 90,movespeed);    
    //move_towards_point(target.x, target.y,speed);
    }
    
    
    //You hit a wall
    else 
    if (place_meeting(x - lengthdir_x(movespeed,direction),y + lengthdir_y(movespeed,direction),par_wall)) 
    then{    
    //Rotate the object so it moves along the wall    
    direction -= 90;    
    
    //Attack to the block    
    
    scr_move_contact_obj(direction+90,movespeed,par_wall) 
    //move_contact_all(direction + 90,movespeed);
    }
    //move_towards_point(target.x, target.y,speed);}
    
    //NOT REQUIRED! If your sprite is like the Zoomer from the metroid games, you want it to rotate as 
    //it takes a corner.
    image_angle = direction+180;
    image_xscale = -1;
