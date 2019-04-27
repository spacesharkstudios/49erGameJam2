existance = 10;
damage = 20;

if(obj_Players.state == 1){
	sprite_index = spr_PlayerFire_AttackEffect;
}
else if(obj_Players.state == 2){
	sprite_index = spr_PlayerWater_AttackEffect;
}