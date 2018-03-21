/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
draw_self();
draw_set_font(font0);

draw_set_halign(fa_bottom);
draw_set_valign(fa_right);
draw_text_transformed_color(x-10,y-5,usingArmorText,2,2,0,c,c,c,c,1);
draw_set_halign(fa_top);
draw_set_valign(fa_left);
draw_text_transformed_color(x+10,y+10,allArmorText,2,2,0,c,c,c,c,1);