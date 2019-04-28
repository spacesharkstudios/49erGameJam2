if(other.damageCooldown >= 15){
	other.HP = other.HP - damage;
	other.damageCooldown = 0;
}


if(other.stunCooldown >= 100){
	other.stun = true;
}