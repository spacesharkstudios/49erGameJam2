
// ground AI Movement
var horizontal = move * enemySpeed;
vertical = vertical + enemyGravity;

// moves enemy towards player
if(instance_exists(obj_Players)){
	
	// am i close enough to stop moving and attack
	if(distance_to_object(obj_Players) < 20){
		move = 0;
		gotThere = true;
	}// should I move left
	else if(x > obj_Players.x){
		input_left = 1;
		input_right = 0;
		move = input_right - input_left;
		gotThere = false;
	}// should i move right
	else if(x < obj_Players.x){
		
		input_right = 1;
		input_left = 0;
		move = input_right - input_left;
		gotThere = false;
	}
	
	// should i jump
	if(y > (obj_Players.y + 50)){
		input_jump = true;
	}
	else{
		input_jump = false;
	}
	
	
	// attacks player
	if((gotThere) && (attackCooldown >= 80)){
		if(x > obj_Players.x){
			instance_create_layer(x - 64, y, "instances", obj_EnemyChargerAttack);
		}
		else{
			instance_create_layer(x + 64, y, "instances", obj_EnemyChargerAttack);
		}
		attackCooldown = 0;
	}
}


// horizontal movement
if (place_meeting(x + horizontal, y, obj_Wall)) {
	
	while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
		x += sign(horizontal);
	}
} else {
	x += horizontal;
}

// vertical movement
if (place_meeting(x, y + vertical, obj_Wall)) {
	while (!place_meeting(x, y + sign(vertical), obj_Wall)) {
		y += sign(vertical);
	}
	vertical = 0;
	jumped = false;
}
y += vertical;


// jumping
if (place_meeting(x, y + 1, obj_Wall) && (input_jump)) {
	vertical = -30;
	jumped = true;
}


// sprite facing
if (horizontal > 0) {
	image_xscale = 1;
	facing = 1;
} else if (horizontal < 0) {
	image_xscale = -1;
	facing = -1;
}






if(HP <= 0){
	instance_destroy();
}




attackCooldown++;
damageCooldown++;