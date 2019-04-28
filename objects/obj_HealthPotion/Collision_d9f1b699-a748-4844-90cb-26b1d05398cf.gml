

if(obj_Players.healthPoints + healValue > 100){
	
	obj_Players.healthPoints = 100;
}
else{
	obj_Players.healthPoints = obj_Players.healthPoints + healValue;
}

scr_PlayAudio(sfx_item);

instance_destroy();