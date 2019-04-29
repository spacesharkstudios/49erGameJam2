
if (active) {
	// ground AI Movement
	horizontal = move * enemySpeed;

	// Moves enemy towards player
	if (instance_exists(obj_Players)) {
		if(!stun){
			stunCooldown++;
	
		// Am I close enough to stop moving and attack
		if (distance_to_object(obj_Players) < 400) {
			move = 0;
			gotThere = true;
		// Should I move left
		} else if (x > obj_Players.x) {
			input_left = 1;
			input_right = 0;
			move = input_right - input_left;
			gotThere = false;
		// Should I move right
		} else if (x < obj_Players.x) {
			input_right = 1;
			input_left = 0;
			move = input_right - input_left;
			gotThere = false;
		}
	
	
		if(x > obj_Players.x){
			facing = -1;
		}
		else if(x <= obj_Players.x){
			facing = 1;
		}
	
		// Should I jump
		if (y > (obj_Players.y + 50)) {
			input_jump = true;
		} else {
			input_jump = false;
		}
	
		// Attacks player
		if ((gotThere) && (attackCooldown >= attackRate)) {
			if(x > obj_Players.x){
				instance_create_layer(x, y, "instances", obj_EnemyHeavyRangedAttack);
			} else {
				instance_create_layer(x, y, "instances", obj_EnemyHeavyRangedAttack);
			}
			attackCooldown = 0;
		}
	}
	else{
	
		if (myStunDuration < finalStunDuration) {
			move = 0;
			gotThere = false;
				myStunDuration++
			} else {
				stun = false;
				myStunDuration = 0;
			}
	}


	// falling & knockback physics
	event_inherited()

	// horizontal movement
	if (place_meeting(x + horizontal, y, obj_Wall)) {
	
		while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
			x += sign(horizontal);
		}
	} else {
		x += horizontal;
	}

	// sprite facing
	if (facing == -1) {
		image_xscale = 1;
		
	} else if (facing == 1) {
		image_xscale = -1;
		}
	
	}
	
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

	attackCooldown++;
	damageCooldown++;
} else if (instance_exists(obj_Players) && distance_to_object(obj_Players) < global.activeDistance) {
	active = true;	
}