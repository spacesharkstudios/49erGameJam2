
if (stun) {
	horizontal = 0
	if (myStunDuration < 50) {
		myStunDuration++
	} else {
		stun = false
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
	sprite_index = spr_EnemySlime_RollBackward
} else {
	sprite_index = spr_EnemySlime_RollForward
}

attackCooldown++;
damageCooldown++;
