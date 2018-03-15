/// @description Insert description here
// You can write your code in this editor
if(image_alpha>=0){
	image_alpha -= 0.05;
}else{
	instance_destroy();
}
y-=3;
x-=.1;
if(image_xscale>.7){
image_xscale-=.13;
}
if(image_yscale>.7){
image_yscale-=.13;
}