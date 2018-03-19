/// @description Insert description here
// You can write your code in this editor
size = 200;
gpu_set_blendmode(bm_subtract);
surface_set_target(light);
draw_ellipse_color(x-size/2-view_xport[0],y-size/2-view_yport[0],x+size/2-view_xport[0],y+size/2-view_yport[0],c_orange,c_black,false);
surface_reset_target();
gpu_set_blendmode(bm_normal);