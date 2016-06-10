// Sprite Hold Down TEMPORARY SPRITE!



// Wall

if !instance_exists(obj_Crystal_Wall)
and ccw = 1
{
    if image_xscale = -2
    {
        instance_create(x-32,y-32,obj_Crystal_Wall);
        global.Oenn_stamina -= 30;
        ccw = 0;
    }
    if image_xscale = 2
    {
        instance_create(x+32,y-32,obj_Crystal_Wall);
        global.Oenn_stamina -= 30;
        ccw = 0;
    }
}


sprite_index = spr_Oenn_CrystalWall;
