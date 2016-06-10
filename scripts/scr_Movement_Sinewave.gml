///scr_Movement_Sinewave(freq)

/* Object must have the variables : wave, up : */

freq = argument0;
amp = argument1;

if wave <= -amp 
{
    up = 0;
}

if wave >= amp
{
    up = 1;
}    

if up = 1
{
    wave -= freq/global.slowmo;
    y -= freq/global.slowmo;
}

if up = 0
{
    wave += freq/global.slowmo;
    y += freq/global.slowmo;
}    
