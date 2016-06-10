///scr_Blending(color1,color2,frequency)

color1 = argument0;
color2 = argument1;
frequency = argument2;

if blend >= 1 
{
    down = 1;
    up = 0;
}

if blend <= 0
{
    down = 0;
    up = 1;
}

if up = 1 
    {
        blend += frequency;
    }

if down = 1 
    {
        blend -= frequency;
    }

    
image_blend = merge_color(color1,color2,blend);
