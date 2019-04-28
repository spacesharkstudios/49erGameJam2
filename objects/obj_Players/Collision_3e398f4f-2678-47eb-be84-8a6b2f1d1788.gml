if (invincibility >= invincibilitySet) {
	if (state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
		} else {
			healthPoints = healthPoints - (obj_EnemyLightRangedAttack.damage / 2);
		}
	} else {
		healthPoints = healthPoints - obj_EnemyLightRangedAttack.damage;
	}
	invincibility = 0;
}