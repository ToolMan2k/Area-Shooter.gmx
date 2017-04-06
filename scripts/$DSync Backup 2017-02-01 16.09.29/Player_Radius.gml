var inst = instance_create(x,y,obj_Player_radius);
with inst {
    target = other.id;
    xscalep = argument0;
    yscalep = argument0;
}
