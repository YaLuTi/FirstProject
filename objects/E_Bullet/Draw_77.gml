/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,object_static)){
	damage = random_range(7,12);
	if(random_range(1,10)>7){
		damage*=2;
		i = instance_create_layer(x,y-15,"Numbers",obj_damage);
		i.str = string(round(damage));
		i.c = c_red;
		i.image_xscale = 1.5;
		i.image_yscale = 1.5;
		with(Camera){
			shake += 5;
		}
	}else{
		i = instance_create_layer(x,y-15,"Numbers",obj_damage);
		i.str = string(round(damage));
	}
	instance_destroy();
}