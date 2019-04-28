spd = 20;
myFacing = 1;
existance = 0;
manaCost = 15;
damage = obj_EnemyHeavyRanged.damage;

if(obj_EnemyHeavyRanged.facing == 1){
	image_xscale = 1;
	myFacing = 1;
}
else{
	image_xscale = -1;
	myFacing = -1;
}
