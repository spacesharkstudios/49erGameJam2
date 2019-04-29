spd = 20;
myFacing = obj_EnemyLightRanged.facing;
existance = 0;
damage = obj_EnemyLightRanged.damage;
cow = false;


if(obj_Players.x > obj_EnemyLightRanged.x){
	cow = 1;
}
else{
	cow = 1;
}



if(obj_EnemyLightRanged.facing == 1){
	image_xscale = 1;
	myFacing = 1;
}
else{
	image_xscale = -1;
	myFacing = -1;
}