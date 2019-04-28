if(other.damageCooldown >= 15){
	other.HP = other.HP - damage;
	other.damageCooldown = 0;
	other.is_knocked_back = sign(other.x - x);
}