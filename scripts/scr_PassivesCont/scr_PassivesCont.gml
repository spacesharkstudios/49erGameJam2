


if (instance_exists(obj_Players)) {
	
	if(obj_Players.state == 1){
		
		
		if(passiveCooldown >= 20){
			healthPoints = healthPoints - 1;
			passiveCooldown = 0;
		}
		
	}
	else if((obj_Players.state == 2) && (obj_Players.healthPoints < 100)){
		
		if(passiveCooldown >= 10 ){
			healthPoints = healthPoints + 1;
			passiveCooldown = 0;
		}
		
	}
	
}