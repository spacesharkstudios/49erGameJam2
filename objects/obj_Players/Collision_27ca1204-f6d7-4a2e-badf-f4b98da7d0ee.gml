
if (enemyChargerCooldown >= 20) {
	if (state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
		} else {
			healthPoints = healthPoints - (obj_EnemyChargerAttack.damage / 2);
		}
	} else {
		is_knocked_back = sign(x - other.x)
		healthPoints = healthPoints - obj_EnemyChargerAttack.damage;
	}
	enemyChargerCooldown = 0;
}