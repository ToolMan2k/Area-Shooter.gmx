/*
Random drops :
1 = Nothing
2 = Small health
3 = Health pack
4 = Armor


*/
randomize();
switch (ceil(random(4))) {
    case 1 : break;
    case 2 : {
        for ( i = ceil(random(3)); i > 0; i-- ) {
            var inst = (instance_create(x, y, obj_Health_Pills))
            with inst {
                speed = random(4);
                direction = random(360);
            }
        }
    } break;
    case 3 : {
        var inst = (instance_create(x, y, obj_Health_Pickup))
        with inst {
            speed = random(4);
            direction = random(360);
        };
    } break;
    case 4 : {
        var inst = (instance_create(x, y, obj_Armor_Pickup))
        with inst {
            speed = random(4);
            direction = random(360);
        }
    } break;
}
