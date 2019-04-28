existence = 10;
damage = obj_Players.basicAttackDamage;

if(obj_Players.state == 1){
	sprite_index = spr_PlayerFire_AttackEffect;
	if(obj_Players.facing == 1){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}
else if(obj_Players.state == 2){
	sprite_index = spr_PlayerWater_AttackEffect;
	if(obj_Players.facing == 1){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}
else if(obj_Players.state == 3){
	sprite_index = spr_PlayerEarth_AttackEffect;
	if(obj_Players.facing == 1){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}
else{
	sprite_index = spr_PlayerAir_AttackEffect;
	if(obj_Players.facing == 1){
		image_xscale = 1;
	}
	else{
		image_xscale = -1;
	}
}
