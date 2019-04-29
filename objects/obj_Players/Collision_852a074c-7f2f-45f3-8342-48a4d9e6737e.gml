if (invincibility >= invincibilitySet) {
	if (state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
		} else {
			healthPoints = healthPoints - (obj_lightBossAttack.damage / 2);
		}
	} else {
		healthPoints = healthPoints - obj_lightBossAttack.damage;
	}
	invincibility = 0;
}