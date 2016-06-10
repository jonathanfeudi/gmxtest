///scr_RandomCreateCloud(x_range,y_range,object)
// ranges are half the sprite dimensions
x_range = argument0;
y_range = argument1;
object = argument2;

instance_create(choose( x-(random_range(1,x_range)) , x+(random_range(1,x_range))),choose( y-(random_range(1,y_range)) , y+(random_range(1,y_range))),object)
