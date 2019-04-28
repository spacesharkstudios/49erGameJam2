


if (instance_exists(obj_Players)) {
	
	if(obj_Players.state == 1){
		
		obj_Players.basicAttackDamage = 30;
		obj_Players.playerSpeed = 10;
		obj_Players.playerGravity = 2;
	}
	else if(obj_Players.state == 2){
		obj_Players.basicAttackDamage = 20;
		obj_Players.playerSpeed = 10;
		obj_Players.playerGravity = 2;
		
	}
	else if(obj_Players.state == 3){
		obj_Players.basicAttackDamage = 20;
		obj_Players.playerSpeed = 10;
		obj_Players.playerGravity = 2;
		
	}
	else{
		obj_Players.basicAttackDamage = 20;
		obj_Players.playerSpeed = 15;
		obj_Players.playerGravity = 1;
	}
	
}







