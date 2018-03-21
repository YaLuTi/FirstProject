/// @description Insert description here
// You can write your code in this editor

key_e = keyboard_check_pressed(ord("E"));

if(holder){
	//Rotate
x = Player.x;
y = Player.y;
mouse_xx = mouse_x;
mouse_yy = mouse_y;

depth = -y - 2;
Recoil = max(0,Recoil-1);


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
	Recoil += 4;
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
}


//Take Gun
if (place_meeting(x,y,Player)&&key_e && holder = false){
	holder = true;
	holdingGun = id;
	
}
if(string(holdingGun)!=string(id)){
	holder = false;
}

//Gun Gravity
if(holder){
	image_angle = point_direction(x,y,mouse_x,mouse_y);
	x = x-lengthdir_x(Recoil,image_angle);
	y = y-lengthdir_y(Recoil,image_angle);
	if(image_angle >90 && image_angle<270){
		image_yscale = -2.5;
		with(Player)image_xscale = -2.5;

	}else{
		image_yscale = 2.5;
		with(Player)image_xscale = 2.5;
	}
	y = Player.y;
	yy = y+32;
	height = yy-y;
	gunUI.sprite_index = sprite_index;
	gunUI.allArmorText = allArmor;
	gunUI.usingArmorText = usingArmor;
	g=-10;
	
}else{

g+=.7;

if(y+g>yy){
	y = yy;
	g = 0;
}else{
	image_angle+=3;
}

height = yy-y;
y += g;
}





