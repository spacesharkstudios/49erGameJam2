
if (active) {
	if (stun) {
		horizontal = 0
		if (myStunDuration < 50) {
			myStunDuration++
		} else {
			stun = false;
			myStunDuration = 0;
		}
	} else {
		horizontal = enemySpeed * moving
		stunCooldown++;
	}

	event_inherited()
	if (knockback != 0) {
		moving = sign(knockback)
	}

	x += horizontal

	// handles death
	if (HP <= 0 && instance_exists(obj_Players)) {
	
		if(obj_Players.manaPoints + manaReward > 100){
			obj_Players.manaPoints = 100;
		}
		else{
			obj_Players.manaPoints = obj_Players.manaPoints + manaReward;
		}
	
		instance_destroy();
	}

	if (moving == 1) {
		image_xscale = 1;
	} else {
		image_xscale = -1;
	}

	attackCooldown++;
	damageCooldown++;
} else if (instance_exists(obj_Players) && distance_to_object(obj_Players) < global.activeDistance) {
	active = true;	
}