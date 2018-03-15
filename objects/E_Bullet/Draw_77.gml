/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,object_static)){
	i = instance_create_depth(x,y-15,-y-100,obj_damage);
		
		i.str = string(round(random_range(1,999)));
	
	instance_destroy();
}