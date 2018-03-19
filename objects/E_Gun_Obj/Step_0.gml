/// @description Insert description here
// You can write your code in this editor
x = Player.x;
y = Player.y;
mouse_xx = mouse_x;
mouse_yy = mouse_y;

depth = -y - 2;

image_angle = point_direction(x,y,mouse_x,mouse_y);

if(image_angle >90 && image_angle<270){
	image_yscale = -2.5;
	with(Player)image_xscale = -2.5;

}else{
	image_yscale = 2.5;
	with(Player)image_xscale = 2.5;
}

//Fire
if(mouse_check_button(mb_left)&&FireRate<0&&usingArmor>0){
	FireRate = 3;
	usingArmor--;
	xx = x+lengthdir_x(25,image_angle);
	yy = y+lengthdir_y(25,image_angle);
	with(Camera){
		shake += 4;
	}
	instance_create_layer(xx,yy,"Bullets",E_GunFire);
	with(instance_create_layer(xx+random_range(-6,6),yy+random_range(6,-6),"Bullets",E_Bullet)){
		speed = 25;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;
	}
}else if(usingArmor<=0){
	if(allArmor-maxUsingArmor>=0){
		usingArmor = maxUsingArmor;
		allArmor -= maxUsingArmor;
	}else{
		usingArmor = allArmor;
		allArmor = 0;
	}
}
FireRate--;
