key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_space = keyboard_check_pressed(vk_space);
key_e = keyboard_check_pressed(ord("E"));


//Move
hsp = (key_right-key_left)*wsp;
vsp = -(key_up-key_down)*wsp;

//Sprites Animation
if(hsp!=0||vsp!=0){
	sprite_index = Walk;
}else{
	sprite_index = Idle;
}


//CollisonX
if (place_meeting(x+hsp*Rush,y,object_static)){
	while(!place_meeting(x+sign(hsp),y,object_static)){
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp*Rush;

//CollisonY
if (place_meeting(x,y+vsp*Rush,object_static)){
	while(!place_meeting(x,y+sign(vsp),object_static)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp*Rush;

//Rush
if(key_space&&(hsp!=0||vsp!=0)){
	Rush = 4;
}
if(Rush>1){
	Rush-=.5;
	instance_create_layer(x,y,"Instances",PlayerShadow);
		
	
}else{
	Rush = 1;
}

//Take Gun
/*if (place_meeting(x,y,objectGun)){
	with(objectGun){
		holder = Player;
	}
	
}*/
//depth 
depth = -y;









