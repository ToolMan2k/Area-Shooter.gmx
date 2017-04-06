if (argument0 > -1) {
    /*Checking joypad direction*/
    if (gamepad_button_check(argument1,gp_face3)= false) {
        /*switch (joystick_direction(argument1))
            {
            case vk_numpad6: pdirection = 0; break;
            case vk_numpad9: pdirection = 1; break;
            case vk_numpad8: pdirection = 2; break;
            case vk_numpad7: pdirection = 3; break;
            case vk_numpad4: pdirection = 4; break;
            case vk_numpad1: pdirection = 5; break;
            case vk_numpad2: pdirection = 6; break;
            case vk_numpad3: pdirection = 7; break;
           }*/
        if (gamepad_button_check(argument1,gp_padr) = true || gamepad_axis_value(argument1, gp_axisrh) >= 0.5) {
            if (gamepad_button_check(argument1,gp_padu) = true || gamepad_axis_value(argument1, gp_axisrv) <= -0.5) {
               pdirection = 1;
           } else if (gamepad_button_check(argument1,gp_padd) = true || gamepad_axis_value(argument1, gp_axisrv) >= 0.5) {
               pdirection = 7;
           } else pdirection = 0;
       }
       if (gamepad_button_check(argument1,gp_padd) = true || gamepad_axis_value(argument1, gp_axisrv) >= 0.5) {
           if (gamepad_button_check(argument1,gp_padr) = true || gamepad_axis_value(argument1, gp_axisrh) >= 0.5) {
               pdirection = 7;
           } else if (gamepad_button_check(argument1,gp_padl) = true || gamepad_axis_value(argument1, gp_axisrh) <= -0.5) {
               pdirection = 5;
           } else pdirection = 6;
       }
       if (gamepad_button_check(argument1,gp_padl) = true || gamepad_axis_value(argument1, gp_axisrh) <= -0.5) {
           if (gamepad_button_check(argument1,gp_padd) = true || gamepad_axis_value(argument1, gp_axisrv) >= 0.5) {
               pdirection = 5;
           } else if (gamepad_button_check(argument1,gp_padu) = true || gamepad_axis_value(argument1, gp_axisrv) <= -0.5) {
               pdirection = 3;
           } else pdirection = 4;
       }
       if (gamepad_button_check(argument1,gp_padu) = true || gamepad_axis_value(argument1, gp_axisrv) <= -0.5) {
           if (gamepad_button_check(argument1,gp_padl) = true || gamepad_axis_value(argument1, gp_axisrh) <= -0.5) {
               pdirection = 3;
           } else if (gamepad_button_check(argument1,gp_padr) = true || gamepad_axis_value(argument1, gp_axisrh) >= 0.5) {
               pdirection = 1;
           } else pdirection = 2;
       }
    }
} else {
/*Checking pressed keys*/
if (keyboard_check(ord('C'))= false){
if (keyboard_check(vk_right) = true) {
    if (keyboard_check(vk_up) = true) {
        pdirection = 1;
    } else if (keyboard_check(vk_down) = true) {
        pdirection = 7;
    } else pdirection = 0;
}
if (keyboard_check(vk_down) = true) {
    if (keyboard_check(vk_right) = true) {
        pdirection = 7;
    } else if (keyboard_check(vk_left) = true) {
        pdirection = 5;
    } else pdirection = 6;
}
if (keyboard_check(vk_left) = true) {
    if (keyboard_check(vk_down) = true) {
        pdirection = 5;
    } else if (keyboard_check(vk_up) = true) {
        pdirection = 3;
    } else pdirection = 4;
}
if (keyboard_check(vk_up) = true) {
    if (keyboard_check(vk_left) = true) {
        pdirection = 3;
    } else if (keyboard_check(vk_right) = true) {
        pdirection = 1;
    } else pdirection = 2;
}}}
