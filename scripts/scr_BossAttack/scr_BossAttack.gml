
	if(obj_Boss1.state == 1){
		if(obj_Boss1.attackStateCounter < 200){
			
			if(obj_Boss1.bigAttackCounter >= obj_Boss1.bigAttackCooldown){
				instance_create_layer(x, y, "instances", obj_BigBossAttack);
				obj_Boss1.bigAttackCounter = 0;
			}
			
		}
		else if((obj_Boss1.attackStateCounter >= 200 ) && (obj_Boss1.attackStateCounter < 400)){
			
			
			if(obj_Boss1.lightAttackCounter >= obj_Boss1.lightAttackCooldown){
					instance_create_layer(x, y, "instances", obj_lightBossAttack);
					obj_Boss1.lightAttackCounter = 0;
					//obj_Boss1.lightAttackCounter2++;
			}
		}
		else{
			obj_Boss1.attackStateCounter = 0;
		}
		
		if(obj_Boss1.summonSlimesCounter  >= obj_Boss1.summonSlimesCooldown){
				instance_create_layer(x, y, "instances", obj_MiniSlime);
				obj_Boss1.summonSlimesCounter = 0;
			}
			
	}
	else{
		
		obj_Boss1.summonSlimesCooldown = obj_Boss1.summonSlimesCooldown * 1.5;
		
		if(obj_Boss1.attackStateCounter < 200){
			
			if(obj_Boss1.bigAttackCounter >= obj_Boss1.bigAttackCooldown){
				instance_create_layer(x, y, "instances", obj_BigBossAttack);
				obj_Boss1.bigAttackCounter = 0;
			}
			
		}
		else if((obj_Boss1.attackStateCounter >= 200 ) && (obj_Boss1.attackStateCounter < 400)){
			
			
			if(obj_Boss1.lightAttackCounter >= obj_Boss1.lightAttackCooldown){
					instance_create_layer(x, y, "instances", obj_lightBossAttack);
					obj_Boss1.lightAttackCounter = 0;
					//obj_Boss1.lightAttackCounter2++;
			}
		}
		else{
			obj_Boss1.attackStateCounter = 0;
		}
		
		if(obj_Boss1.summonSlimesCounter  >= obj_Boss1.summonSlimesCooldown){
			instance_create_layer(x, y, "instances", obj_EnemyChargerGround);
			obj_Boss1.summonSlimesCounter = 0;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}