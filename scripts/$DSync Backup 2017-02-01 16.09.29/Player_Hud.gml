/*Size of HUD : 240x120*/
/*Defining where the hud boxes will go.*/
switch (argument0) {
    case 1 : var hudx=0;              var hudy=0;              break;
    case 2 : var hudx=view_wport-240; var hudy=0;              break;
    case 3 : var hudx=0;              var hudy=view_hport-120; break;
    case 4 : var hudx=view_wport-240; var hudy=view_hport-120; break;
    default: var hudx=0;              var hudy=0;
}
/*Drawing the box itself*/
draw_set_colour(c_black);
draw_rectangle(hudx, hudy, hudx+240, hudy+120, false);
draw_set_colour(c_white);
draw_rectangle(hudx, hudy, hudx+240, hudy+120, true);
/*Drawing current health*/
draw_sprite(img_Health_Pack, 0, hudx+8, hudy+80);
for (i=0; i < phealth; i++) {draw_sprite(img_Health_Bar, 0, hudx+28+(i*8), hudy+80)}
/*Drawing current armor*/
draw_sprite(img_Armor_Pickup, 0, hudx+8, hudy+96);
for (i=0; i < armor; i++) {draw_sprite(img_Armor_Bar, 0, hudx+28+(i*8), hudy+96)}
/*Drawing weapon graphic*/
switch weapon_select {
    case 0 : draw_sprite(img_HUD_Pistol,  0, hudx+8, hudy+8); break
    case 1 : draw_sprite(img_HUD_Shotgun, 0, hudx+8, hudy+8); break
    case 2 : draw_sprite(img_HUD_Pistol, 0, hudx+8, hudy+8); break
    default: draw_sprite(img_HUD_Pistol,  0, hudx+8, hudy+8); break
}
/*Drawing current ammunition*/
switch weapon_select {
    case 0 : draw_text(hudx+128, hudy+8, "Pistol");        draw_text(hudx+128, hudy+20, "Infinite"); break;
    case 1 : draw_text(hudx+128, hudy+8, "Shotgun");       draw_text(hudx+128, hudy+20, "" + string(shotgun_ammo))  ; break;
    case 2 : draw_text(hudx+128, hudy+8, "Machine Gun");   draw_text(hudx+128, hudy+20, "" + string(machinegun_ammo)); break;
    case 3 : draw_text(hudx+128, hudy+8, "Flamethrower"); draw_text(hudx+128, hudy+20, "" + string(flame_ammo))     ; break;
    case 4 : draw_text(hudx+128, hudy+8, "Mines"); draw_text(hudx+128, hudy+20, "" + string(mine_ammo))     ; break;
}
draw_text(hudx+128, hudy+32, "Bombs : " + string(grenade));
