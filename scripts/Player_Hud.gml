/*Size of HUD : 240x76*/
/*Defining where the hud boxes will go.*/
switch (argument0) {
    case 1 : var hudx=16;                     var hudy=16;                     break;
    case 2 : var hudx=window_get_width()-256; var hudy=16;                     break;
    case 3 : var hudx=16;                     var hudy=window_get_height()-92; break;
    case 4 : var hudx=window_get_width()-256; var hudy=window_get_height()-92; break;
    default: var hudx=16;                     var hudy=16;
}
/*Drawing the box itself*/
draw_set_colour(c_black);
draw_rectangle(hudx, hudy, hudx+240, hudy+76, false);
draw_set_colour(c_white);
draw_rectangle(hudx, hudy, hudx+240, hudy+76, true);
/*Drawing current health*/
draw_sprite(img_Health_Pack, 0, hudx+8, hudy+36);
for (i=0; i < phealth; i++) {draw_sprite(img_Health_Bar, 0, hudx+28+(i*8), hudy+36)}
/*Drawing current armor*/
draw_sprite(img_Armor_Pickup, 0, hudx+8, hudy+52);
for (i=0; i < armor; i++) {draw_sprite(img_Armor_Bar, 0, hudx+28+(i*8), hudy+52)}
/*Drawing weapon graphic*/
/*switch weapon_select {
    case 0 : draw_sprite(img_HUD_Pistol,  0, hudx+8, hudy+8); break
    case 1 : draw_sprite(img_HUD_Shotgun, 0, hudx+8, hudy+8); break
    case 2 : draw_sprite(img_HUD_Pistol, 0, hudx+8, hudy+8); break
    default: draw_sprite(img_HUD_Pistol,  0, hudx+8, hudy+8); break
}*/
/*Drawing current ammunition*/
switch weapon_select {
    case 0 : draw_set_halign(fa_left); draw_text(hudx+8, hudy+4, "Pistol");       draw_set_halign(fa_right); draw_text(hudx+232, hudy+4, "Infinite"); break;
    case 1 : draw_set_halign(fa_left); draw_text(hudx+8, hudy+4, "Shotgun");      draw_set_halign(fa_right); draw_text(hudx+232, hudy+4, "" + string(shotgun_ammo))  ; break;
    case 2 : draw_set_halign(fa_left); draw_text(hudx+8, hudy+4, "Machine Gun");  draw_set_halign(fa_right); draw_text(hudx+232, hudy+4, "" + string(machinegun_ammo)); break;
    case 3 : draw_set_halign(fa_left); draw_text(hudx+8, hudy+4, "Flamethrower"); draw_set_halign(fa_right); draw_text(hudx+232, hudy+4, "" + string(flame_ammo))     ; break;
    case 4 : draw_set_halign(fa_left); draw_text(hudx+8, hudy+4, "Mines");        draw_set_halign(fa_right); draw_text(hudx+232, hudy+4, "" + string(mine_ammo))     ; break;
}
draw_set_halign(fa_left); draw_text(hudx+8, hudy+18, "Bombs : "); draw_set_halign(fa_right); draw_text(hudx+232, hudy+16, "" + string(grenade));
/*Drawing keycards*/
switch (argument0) {
    case 2 :
        if (keys[0]) {draw_sprite(img_RedCard,0, hudx+8   , hudy+80)}
        if (keys[1]) {draw_sprite(img_BlueCard,0, hudx+8+16, hudy+80)}
        if (keys[2]) {draw_sprite(img_GreenCard,0, hudx+8+32, hudy+80)}
        break;
    case 3 :
        if (keys[0]) {draw_sprite(img_RedCard,0, hudx+8   , hudy-20)}
        if (keys[1]) {draw_sprite(img_BlueCard,0, hudx+8+16, hudy-20)}
        if (keys[2]) {draw_sprite(img_GreenCard,0, hudx+8+32, hudy-20)}
        break;
    case 4 :
        if (keys[0]) {draw_sprite(img_RedCard,0, hudx+8   , hudy-20)}
        if (keys[1]) {draw_sprite(img_BlueCard,0, hudx+8+16, hudy-20)}
        if (keys[2]) {draw_sprite(img_GreenCard,0, hudx+8+32, hudy-20)}
        break;
    default :
        if (keys[0]) {draw_sprite(img_RedCard,0, hudx+8   , hudy+80)}
        if (keys[1]) {draw_sprite(img_BlueCard,0, hudx+8+16, hudy+80)}
        if (keys[2]) {draw_sprite(img_GreenCard,0, hudx+8+32, hudy+80)}
}
