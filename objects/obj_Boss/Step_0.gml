
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
		
		
		if(summonSlimesCounter  >= summonSlimesCooldown){
			instance_create_layer(x, y, "instances", obj_MiniSlime);
		}
		else if(bigAttackCounter >= bigAttackCooldown){
			instance_create_layer(x, y, "instances", obj_MiniSlime);
		}
		else{
			instance_create_layer(x, y, "instances", obj_);
		}
		
		
		
		

		
		
		
		
		
		
		
		
		
		
		
		
	}
	else if(state == 2){
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
	else{
		
		
		
		
		
		
		
		
		
		
		
	}
	
}





