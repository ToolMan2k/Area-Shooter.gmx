// This will create smoke
// Big Smoke
for (i = 0; i <= 8+round(random(4)); i++) {
    var pid = id
    var inst = instance_create(x, y, obj_Smoke);
    with inst {
        direction = (360 / 12) * pid.i - 12 + random(24);
        speed = 1 + random(2)
    }
}
// Small Smoke
for (i = 0; i <= 3+round(random(3)); i++) {
    var pid = id
    var inst = instance_create(x, y, obj_Smoke);
    with inst {
        direction = (360 / 6) * pid.i - 9 + random(18);
        speed = 1 + random(1)
    }
}
    
