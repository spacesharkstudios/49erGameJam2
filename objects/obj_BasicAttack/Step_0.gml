existance--;
if(instance_exists(obj_Players)){
if(obj_Players.facing == 1){
	x = (obj_Players.x + 20);
	y = obj_Players.y + 10;
	image_xscale = 1;
}
else{
	x = (obj_Players.x - 20);
	y = obj_Players.y + 10;
	image_xscale = -1;
}

if(existance <= 0){
	instance_destroy();
}
}