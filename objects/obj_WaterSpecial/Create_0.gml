healValue = 40;
existance = 0;

manaCost = 25;


if(obj_Players.healthPoints + healValue > 100){
	
	obj_Players.healthPoints = 100;
}
else{
	obj_Players.healthPoints = obj_Players.healthPoints + healValue;
}

