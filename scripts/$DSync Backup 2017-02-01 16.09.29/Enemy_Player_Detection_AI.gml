/*

This script will allow enemies to detect near players and shooting back.

"argument0" will change the desactivation radius of the monster.

*/
if (aggressive = 0) {
    if (collision_rectangle( x-8, y-8, x+8, y+8, obj_Player_radius, true, false ) != noone) {
        var pid = id;
        var inst = (collision_rectangle( x-8, y-8, x+8, y+8, obj_Player_radius, true, false ));
        with inst {
            pid.target = target;
        }
        aggressive = 1;
        alarm_set(0,1);
        var inst = (instance_create(x,y,obj_Detection_radius_128x));
        with inst {
            target = pid.target
        }
            
    }
} else {
    if (distance_to_object(global.target1) > argument0 &&
        distance_to_object(global.target2) > argument0 &&
        distance_to_object(global.target3) > argument0 &&
        distance_to_object(global.target4) > argument0 ||
        target.dead = 1) {
        aggressive = 0;
        target = 0;
        alarm_set(0,0);
    }
}
