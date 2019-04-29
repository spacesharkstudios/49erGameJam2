if (invincibility >= invincibilitySet) {
	if (state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
			is_knocked_back = sign(x - other.x);
		} else {
			healthPoints = healthPoints - (obj_BigBossAttack.damage / 2);
			is_knocked_back = sign(x - other.x);
		}
	} else {
		is_knocked_back = sign(x - other.x);
		healthPoints = healthPoints - obj_BigBossAttack.damage;
	}
	invincibility = 0;
}