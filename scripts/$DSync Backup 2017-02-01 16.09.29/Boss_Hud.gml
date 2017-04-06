/*Size of bar : 720*40*/
/*argument0 = Boss name*/
/*Defining where the boss bar will go.*/
hudx = view_wport/2-(720/2);
hudy = view_hport-40-64;

/*Drawing the bar itself*/
draw_set_colour(c_black);
draw_rectangle(hudx, hudy, hudx+720, hudy+40, false);
draw_set_colour(c_white);
draw_rectangle(hudx, hudy, hudx+720, hudy+40, true);

/*Drawing the boss name*/

draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(hudx+720/2, hudy+2, string(argument0));
draw_set_halign(fa_left);

/*Drawing current health*/
for (i=0; i < ceil(health_m/health_max*(89/2)); i++) {
    draw_sprite(img_Health_Bar, 0, hudx+720/2+(i*8)-4, hudy+20);
    draw_sprite(img_Health_Bar, 0, hudx+720/2-(i*8)-4, hudy+20);
}
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_text(hudx+720/2, hudy+20, string(health_m));
draw_set_halign(fa_left);
