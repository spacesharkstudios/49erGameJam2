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
if (place_meeting(x, y + 1, obj_Wall) && (input_jump)) {
	scr_PlayAudio(sfx_player_jump);
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


// state change
if (input_change1) {
	state = 1;
	scr_PlayAudio(sfx_player_tran);
} else if (input_change2) {
	state = 2;
	scr_PlayAudio(sfx_player_tran);
} else if (input_change3) {
	state = 3;
	scr_PlayAudio(sfx_player_tran);
} else if (input_change4) {
	state = 4;
	scr_PlayAudio(sfx_player_tran);
}


if(input_change1 || input_change2 || input_change3 || input_change4){
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
	
	scr_PassivesCont();
	
} else {
	specialAttackCost = 20;
	if (jumped) {
		sprite_index = spr_PlayerAir_Jump;
	} else if (move != 0) {
		sprite_index = spr_PlayerAir_Run;
	} else if(attack){
		sprite_index = spr_PlayerAir_Attack;
	} else {
		sprite_index = spr_PlayerAir_Idle;
	}
	
	scr_PassivesCont();
	
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
	if (countingN%20 = 0) {
		scr_PlayAudio(sfx_player_low)
	}
}


// handles death
if (healthPoints <= 0) {
	instance_destroy();
	scr_PlayAudio(sfx_player_def)
}





shiftState = false;
specialAttactCooldown--;
basicAttackCooldown--;
enemyChargerCooldown++;
enemySlimeCooldown++;
passiveCooldown++;
