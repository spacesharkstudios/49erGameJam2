

if(obj_Players.manaPoints + manaValue > 100){
	
	obj_Players.manaPoints = 100;
}
else{
	obj_Players.manaPoints = obj_Players.manaPoints + manaValue;
}

scr_PlayAudio(sfx_item);

instance_destroy();