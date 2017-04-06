/*
Shooting bullet depending of enemy's weapon

   argument9       : Weapon_select
If argument1 = true: no weapon cooldown

*/
var shot_success = false;
    switch (argument0) {
        case 0:
            var pid = id;
            var inst = instance_create(x, y, obj_Bullet);
            with (inst){
                porigin = pid.id;
                speed = 17;
                direction = point_direction(x,y,other.target.x,other.target.y) - (2/2) + random(2);
                damage = 2
            }; weapon_cooldown_overwrite = 0; shot_success = true; break;
        case 1: 
                for (i = 0; i < 8; i++) {
                    var pid = id;
                    randomize()
                    var inst = instance_create(x, y, obj_Bullet);
                    with (inst){
                        porigin = pid.id;
                        speed = 6+random(3);
                        direction = point_direction(x,y,other.target.x,other.target.y) - (25/2) + random(25);}
                        damage = 1
            }; weapon_cooldown_overwrite = 0; shot_success = true; break;
        case 2: 
            var pid = id;
            var inst = instance_create(x, y, obj_Bullet);
            with (inst){
                porigin = pid.id;
                speed = 8;
                direction = point_direction(x,y,other.target.x,other.target.y) - (10/2) + random(10);
                damage = 1
            };
            if (random(25) < 22) {weapon_cooldown_overwrite = 1; alarm_set(0,5);} else {weapon_cooldown_overwrite = 0};
            shot_success = true; break;
        case 3:
            var pid = id;
            var inst = instance_create(x, y, obj_Flame);
            with (inst){
                porigin = pid.id;
                speed = 6;
                direction = point_direction(x,y,other.target.x,other.target.y) - (2/2) + random(2);
                damage = 0.2
            };  
            if (random(25) < 22) {weapon_cooldown_overwrite = 1; alarm_set(0,2);} else {weapon_cooldown_overwrite = 0};
            shot_success = true; break;    
    }
    shot_success = false;
    if (argument1 = true) alarm_set(0,0);
