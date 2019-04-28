
if (active) {
	horizontal = move * enemySpeed;
	
	if (instance_exists(obj_Players)) {
		if (!stun) {
			sprite_index = spr_SlimeCharger_FullAssSprint;
			stunCooldown++;
			
			if (distance_to_object(obj_Players) < 20) {
				move = 0;
				gotThere = true;
			} else if (x > obj_Players.x) {
				move = -1;
				gotThere = false;
			} else {
				move = 1;
				gotThere = false;
			}
			
			if (gotThere && attackCooldown >= 80) {
				instance_create_layer(x + sign(obj_Players.x - x) * 64, y, "instances", obj_EnemyChargerAttack);
				attackCooldown = 0;
			}
		} else {
			sprite_index = spr_SlimeCharger_Idle;
			if (myStunDuration < finalStunDuration) {
				move = 0;
				gotThere = false;
				myStunDuration++;
			} else {
				stun = false;
				myStunDuration = 0;
			}
		}
	}
	
	event_inherited();
	if (knockback != 0) {
		moving = sign(knockback)
	}
	
	if (place_meeting(x + horizontal, y, obj_Wall)) {
		while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
			x += sign(horizontal);
		}
	} else {
		x += horizontal;
	}
	
	// jumping
	if (place_meeting(x, y + 1, obj_Wall) && (input_jump)) {
		vertical = -30;
		jumped = true;
	}
	
	if (horizontal > 0) {
		image_xscale = -1;
		facing = 1;
	} else if (horizontal < 0) {
		image_xscale = 1;
		facing = -1;
	}

	// handles death
	if (HP <= 0 && instance_exists(obj_Players)) {
		if(obj_Players.manaPoints + manaReward > 100){
			obj_Players.manaPoints = 100;
		} else {
			obj_Players.manaPoints = obj_Players.manaPoints + manaReward;
		}
	
		instance_destroy();
	}

	attackCooldown++;
	damageCooldown++;
} else if (instance_exists(obj_Players) && distance_to_object(obj_Players) < global.activeDistance) {
	active = true;	
}