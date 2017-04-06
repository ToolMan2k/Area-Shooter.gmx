Sound_Effect_Player(3, 1,0.9+random(0.2),70);
// This will create exploding instances<
// Big explosion
for (i = 0; i <= 12; i++) {
    var pid = id
    var inst = instance_create(x, y, obj_Explosion);
    with inst {
        direction = (360 / 12) * pid.i;
        speed = 12
        back_speed = speed/15
    }
}
// Small explosion
for (i = 0; i <= 6; i++) {
    var inst = instance_create(x, y, obj_Explosion);
    with inst {
        direction = (360 / 6) * pid.i;
        speed = 6
        back_speed = speed/15
    }
}
// Smoke
script_execute(scr_Smoke)
