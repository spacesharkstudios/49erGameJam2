


if (instance_exists(obj_Players)) {
	obj_Players.doubleJump = (obj_Players.state == 4);
	obj_Players.earthBlock = (obj_Players.state == 3);
	obj_Players.knockback_resist = (obj_Players.state == 3 ? 1.5 : 1);
	
	if(obj_Players.state == 1){
		
		obj_Players.basicAttackDamage = 30;
		obj_Players.playerSpeed = 10;
		obj_Players.object_gravity = 2;
	}
	else if(obj_Players.state == 2){
		obj_Players.basicAttackDamage = 20;
		obj_Players.playerSpeed = 10;
		obj_Players.object_gravity = 2;
	}
	else if(obj_Players.state == 3){
		obj_Players.basicAttackDamage = 20;
		obj_Players.playerSpeed = 9;
		obj_Players.object_gravity = 2.1;
	}
	else{
		obj_Players.basicAttackDamage = 20;
		obj_Players.playerSpeed = 15;
		obj_Players.object_gravity = 1.6;
	}
	
}







