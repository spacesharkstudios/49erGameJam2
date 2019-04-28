

if (instance_exists(obj_Players)) {

if(!stun){
	
	x += enemySpeed * moving
	
	if(HP <=0){
		obj_Players.manaPoints = obj_Players.manaPoints + manaReward
		instance_destroy();
	}
	stunCooldown++;
}
// handling stun
else{
		
	if(myStunDuration < 50){
			myStunDuration++;
		}
		else{
			stun = false;
		}
	}
}

damageCooldown++;