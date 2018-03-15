x += (xTo-x)/5;
y += (yTo-y)/5;

if(follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

//var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
//camera_set_view_mat(camera,vm);
camera_set_view_pos(camera,x-512,y-384);
x += random_range(-shake,shake); 
y += random_range(-shake,shake);
if(shake>0){
	shake-=(shake-0)*0.7;
}