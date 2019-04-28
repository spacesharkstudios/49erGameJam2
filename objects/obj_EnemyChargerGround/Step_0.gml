
if (active) {
	// ground AI Movement
	horizontal = move * enemySpeed;

	// Moves enemy towards player
	if (instance_exists(obj_Players)) {
		if(!stun){
			sprite_index = spr_SlimeCharger_FullAssSprint;
			stunCooldown++;
	
		// Am I close enough to stop moving and attack
		if (distance_to_object(obj_Players) < 20) {
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
	
		// Attacks player
		if ((gotThere) && (attackCooldown >= 80)) {
			if(x > obj_Players.x){
				instance_create_layer(x - 64, y, "instances", obj_EnemyChargerAttack);
			} else {
				instance_create_layer(x + 64, y, "instances", obj_EnemyChargerAttack);
			}
			attackCooldown = 0;
		}
	}
	else{
		sprite_index = spr_SlimeCharger_Idle;
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
	event_inherited();
		if (knockback != 0) {
			moving = sign(knockback)
		}

	// horizontal movement
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

	// sprite facing
	if (horizontal > 0) {
		image_xscale = -1;
		facing = 1;
	} else if (horizontal < 0) {
		image_xscale = 1;
		facing = -1;
		}
	
		stunCooldown++;
	}
	else{
	
		if(myStunDuration < 50){
				myStunDuration++;
		}
		else{
			stun = false;
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