
if (enemySlimeCooldown >= 20) {
	is_knocked_back = sign(x - other.x)
	if (state == 3) {
		healthPoints = healthPoints - (obj_Slime.damage / 2);
	} else {
		healthPoints = healthPoints - obj_Slime.damage;
	}
	enemySlimeCooldown = 0;
}
