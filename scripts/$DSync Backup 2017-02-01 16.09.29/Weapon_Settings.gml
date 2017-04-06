/* Shooting bullet depending of player's weapon */
var shot_success = false;
if (weapon_cooldown <= 0) {
    switch (weapon_select) {
        case 0: var inst;
            inst = instance_create(x, y, obj_Bullet);
            with (inst){
                speed = 17;
                direction = other.pdirection * 45 - (2/2) + random(2);
                damage = 2
            }; alarm_set(11,20); weapon_cooldown = 1; shot_success = true; break;
        case 1: if (shotgun_ammo > 0){
            var inst;
                for (i = 0; i < 8; i++) {
                    randomize()
                    inst = instance_create(x, y, obj_Bullet);
                    with (inst){
                        speed = 14+random(3);
                        direction = other.pdirection * 45 - (25/2) + random(25);}
                        damage = 1
            };  alarm_set(11,20); weapon_cooldown = 1; shotgun_ammo -= 1; shot_success = true;} break;
        case 2: if (machinegun_ammo > 0) {var inst;
            inst = instance_create(x, y, obj_Bullet);
            with (inst){
                speed = 15;
                direction = other.adirection - (10/2) + random(10);
                damage = 1
            }; alarm_set(11,2); weapon_cooldown = 1; machinegun_ammo -= 1; shot_success = true;} break;
        case 3: if (flame_ammo > 0) {var inst;
            inst = instance_create(x, y, obj_Flame);
            with (inst){
                porigin = Player1.id;
                speed = 6;
                direction = other.adirection - (2/2) + random(2);
                damage = 0.2
            }; alarm_set(11,2); weapon_cooldown = 1; flame_ammo -= 1; shot_success = true;} break;
        case 4: if (mine_ammo > 0) {var inst;
            inst = instance_create(x, y, obj_Mine);
            with (inst){
                direction = other.pdirection * 45 - (2/2) + random(2);
                damage = 2
            }; alarm_set(11,20); weapon_cooldown = 1; mine_ammo -= 1; shot_success = true;} break;
    }
    if (shot_success = true) {detection_modifier = 4;}
}

