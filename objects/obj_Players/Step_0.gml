// controls
var input_left = keyboard_check(ord("A"));
var input_right = keyboard_check(ord("D"));
var input_jump = (keyboard_check_pressed(vk_space) ||  keyboard_check_pressed(ord("W")));
var input_change1 = keyboard_check_pressed(ord("1"));
var input_change2 = keyboard_check_pressed(ord("2"));
var input_change3 = keyboard_check_pressed(ord("3"));
var input_change4 = keyboard_check_pressed(ord("4"));
var attack = keyboard_check_pressed(ord("O"));
var specialAttack = keyboard_check_pressed(ord("P"));

var move = input_right - input_left;
horizontal = move * playerSpeed;

event_inherited()

// horizontal movement
if (place_meeting(x + horizontal, y, obj_Wall)) {
	while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
		x += sign(horizontal);
	}
	knockback = 0;
} else {
	x += horizontal;
}

// jumping
var onGround = place_meeting(x, y + 1, obj_Wall);
if (!doubleJump) {
	hasDoubleJump = false;
} else if (onGround) {
	hasDoubleJump = true;
}
if (input_jump && (onGround || (hasDoubleJump && manaPoints >= doubleJumpCost))) {
	scr_PlayAudio(sfx_player_jump);
	vertical = -30;
	jumped = true;
	if (!onGround && hasDoubleJump) {
		hasDoubleJump = false;
		manaPoints -= doubleJumpCost;
	}
}

// sprite facing
if (move > 0) {
	image_xscale = 1;
	facing = 1;
} else if (move < 0) {
	image_xscale = -1;
	facing = -1;
}


// state change
var targetState = state;
if (input_change1) { targetState = 1; }
if (input_change2) { targetState = 2; }
if (input_change3) { targetState = 3; }
if (input_change4) { targetState = 4; }

if (transformCooldownCounter > 0) {
	transformCooldownCounter--;
} else if (targetState != state && manaPoints >= transformationCost) {
	state = targetState;
	manaPoints -= transformationCost;
	transformCooldownCounter = transformCooldown;
	scr_PlayAudio(sfx_player_tran);
	scr_Passives();
}

// handles animations and passives
if (state == 1) {
	specialAttackCost = 15;
	if (jumped) {
		sprite_index = spr_PlayerFire_Jump;
	} else if (move != 0) {
		sprite_index = spr_PlayerFire_Run;
	} else {
		sprite_index = spr_PlayerFire_Idle;
	}
	
	scr_PassivesCont();
	
} else if (state == 2) {
	specialAttackCost = 25;
	if (jumped) {
		sprite_index = spr_PlayerWater_Jump;
	} else if (move != 0) {
		sprite_index = spr_PlayerWater_Run;
	} else {
		sprite_index = spr_PlayerWater_Idle;
	}
	
	scr_PassivesCont();
	
} else if (state == 3) {
	specialAttackCost = 20;
	if (jumped) {
		sprite_index = spr_PlayerEarth_Jump;
	} else if (move != 0) {
		sprite_index = spr_PlayerEarth_Run;
	} else {
		sprite_index = spr_PlayerEarth_Idle;
	}
} else {
	specialAttackCost = 20;
	if (jumped) {
		sprite_index = spr_PlayerAir_Jump;
	} else if (move != 0) {
		sprite_index = spr_PlayerAir_Run;
	} else {
		sprite_index = spr_PlayerAir_Idle;
	}
}



// handles basic attacks
if ((basicAttackCooldown <= 0) && (attack)) {
	basicAttackCooldown = 10;
	
	if (facing == 1) {
		instance_create_layer(x + 20, y + 10, "instances", obj_BasicAttack);
	} else {
		instance_create_layer(x -20 , y + 10, "instances", obj_BasicAttack);
	}
	scr_PlayAudio(sfx_player_atk);
}


//special attack
if((specialAttactCooldown <= 0) && (specialAttack) && (manaPoints >= specialAttackCost)){
	scr_SpecialAttack();
	manaPoints = manaPoints - specialAttackCost;
}


//handles health alarm
if (healthPoints <= 20) {
	healthLoop = true;
} else {
	healthLoop = false;	
}

if (healthLoop = true) {
	if (countingN%30 == 0) {
		scr_PlayAudio(sfx_player_low)
	}
	countingN++
}


// handles death
if (healthPoints <= 0) {
	audio_stop_all();
	obj_GameController.playerisdead = true;
	scr_PlayAudio(sfx_player_def);
	instance_destroy();
}





shiftState = false;
specialAttactCooldown--;
basicAttackCooldown--;
invincibility++;
passiveCooldown++;
