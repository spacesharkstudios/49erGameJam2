
if(HP >= 500){
	state = 1;
}
else if((HP < 500) && !reachedDest){
	state = 2;
}
else{
	state = 3;
}


if(instance_exists(obj_Players)){
	
	if(state == 1){
		
		attackStateCounter++;
		
		// handles boss attack cycle
		if(!lightAttackState){
		
		if(attackStateCounter < 200){
			
			if(summonSlimesCounter  >= summonSlimesCooldown){
				instance_create_layer(x, y, "instances", obj_MiniSlime);
				summonSlimesCounter = 0;
			}
			
		}
		else if((attackStateCounter >= 200 ) && (attackStateCounter < 300)){
			
			if(bigAttackCounter >= bigAttackCooldown){
				instance_create_layer(x, y, "instances", obj_MiniSlime);
				bigAttackCounter = 0;
			}
			
		}
		else if((attackStateCounter >= 300 ) && (attackStateCounter < 300)){
			lightAttackState = true;
		}
		else{
			attackStateCounter = 0;
		}
		
		
		}
		else{
			
			if(lightAttackCounter >= lightAttackCooldown){
				instance_create_layer(x, y, "instances", obj_MiniSlime);
				lightAttackCounter = 0;
			}
			
		}

		
		
		
		
		
		
		
		
		
		
		
		
	}
	else if(state == 2){
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	else{
		
		
		
		
		
		
		
		
		
		
		
	}
	
}



lightAttackCounter++;
bigAttackCounter++;
summonSlimesCounter++;

