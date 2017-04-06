/*Moving character*/
for (i = 0; i < 2; i++) {
    /*switch (joystick_direction(argument0)){
        case vk_numpad6: mp_linear_step(x+1, y+0, 1, false);                                     break;
        case vk_numpad9: mp_linear_step(x+0, y-1, 1, false); mp_linear_step(x+1, y+0, 1, false); break;
        case vk_numpad8: mp_linear_step(x+0, y-1, 1, false);                                     break;
        case vk_numpad7: mp_linear_step(x-0, y-1, 1, false); mp_linear_step(x-1, y+0, 1, false); break;
        case vk_numpad4: mp_linear_step(x-1, y+0, 1, false);                                     break;
        case vk_numpad1: mp_linear_step(x+0, y+1, 1, false); mp_linear_step(x-1, y+0, 1, false); break;
        case vk_numpad2: mp_linear_step(x+0, y+1, 1, false);                                     break;
        case vk_numpad3: mp_linear_step(x+0, y+1, 1, false); mp_linear_step(x+1, y+0, 1, false); break;
   }*/
    if (gamepad_button_check(argument0,gp_padr) = true || gamepad_axis_value(argument0, gp_axislh) >= 0.5) {
        mp_linear_step(x+1, y+0, 1, false);
    }
    if (gamepad_button_check(argument0,gp_padd) = true || gamepad_axis_value(argument0, gp_axislv) >= 0.5) {
        mp_linear_step(x+0, y+1, 1, false); 
    }
    if (gamepad_button_check(argument0,gp_padl) = true || gamepad_axis_value(argument0, gp_axislh) <= -0.5) {
        mp_linear_step(x-1, y+0, 1, false); 
    }
    if (gamepad_button_check(argument0,gp_padu) = true || gamepad_axis_value(argument0, gp_axislv) <= -0.5) {
        mp_linear_step(x+0, y-1, 1, false);
    }
}
/*Button Actions*/
/*Shoot (A / X / Right Stick)*/
if (gamepad_button_check(argument0,gp_face1) = true ||
    gamepad_axis_value(argument0, gp_axisrh) >= 0.5 ||
    gamepad_axis_value(argument0, gp_axisrh) <= -0.5 ||
    gamepad_axis_value(argument0, gp_axisrv) >= 0.5 ||
    gamepad_axis_value(argument0, gp_axisrv) <= -0.5 ) {
    script_execute(Weapon_Settings);
}
/*Use (B / O / Right Stick Button)*/
if (gamepad_button_check(argument0,gp_face2) = true || gamepad_button_check(argument0,gp_stickr) = true) {
    if (use_pressed = 0) {
        var pid = id
        var inst = instance_create(x, y, obj_Interract);
        with inst {
            target = pid
            speed = 0 //originaly 9
            direction = pid.pdirection*45
        }
        use_pressed = 1;
    }
} else if (use_pressed = 1) { use_pressed = 0; }
/*Shoot (X / /\)*/
if (gamepad_button_check(argument0,gp_face4) = true) {
    if (bomb_pressed = 0) {
            event_user(5);
        }
    bomb_pressed = 1;
} else if (bomb_pressed = 1) { bomb_pressed = 0; }
/*Toggle Weapon Down (L)*/
if (gamepad_button_check(argument0,gp_shoulderl) = true) {
    if (switchl_pressed = 0) {
            script_execute(Weapon_Select, 1, 0);
        }
        switchl_pressed = 1;
    }
else if (switchl_pressed = 1) { switchl_pressed = 0; }
/*Toggle Weapon Up (R)*/
if (gamepad_button_check(argument0,gp_shoulderr) = true) {
    if (switchr_pressed = 0) {
            script_execute(Weapon_Select, 2, 0);
        }
        switchr_pressed = 1;
    }
else if (switchr_pressed = 1) { switchr_pressed = 0; }
