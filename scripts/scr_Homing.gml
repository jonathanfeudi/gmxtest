/*
if(instance_exists(obj_fighter1)) {
    var target;
    target = instance_nearest(x, y, obj_fighter1);

    if(target != noone) {
        var angle_to_target;
        angle_to_target = point_direction(x,y,target.x,target.y);
        var difference;
        difference = angle_difference(direction,angle_to_target);

        if(difference > 0) {
            direction -= 3;
        }

        if(difference < 0) {
            direction += 3;
        }
    }
}
