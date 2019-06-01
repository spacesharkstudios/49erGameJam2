spd = 20;
myFacing = 1;
existance = 0;
damage = obj_EnemyLightRanged.damage;

if(obj_EnemyLightRanged.facing == 1){
	image_xscale = 1;
	myFacing = 1;
}
else{
	image_xscale = -1;
	myFacing = -1;
}