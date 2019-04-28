
// ground AI Movement
var horizontal = move * enemySpeed;

// Moves enemy towards player
if (instance_exists(obj_Players)) {
	if(!stun){
	
	// Should I move left
	if (x > (obj_Players.x + 10)) {
		input_left = 1;
		input_right = 0;
		move = input_right - input_left;
		gotThere = false;
	// Should I move right
	} else if (x < (obj_Players.x - 10)) {
		input_right = 1;
		input_left = 0;
		move = input_right - input_left;
		gotThere = false;
		// Am I close enough to stop moving and attack
	}
	else{
		move = 0;
		gotThere = true;
	}
	
	// Attacks player
	if ((gotThere) && (attackCooldown >= attackRate)) {
		instance_create_layer(x, y + 12, "instances", obj_MiniSlime);
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