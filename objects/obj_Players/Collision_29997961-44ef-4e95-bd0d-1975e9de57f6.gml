
if (invincibility >= invincibilitySet) {
	if (state == 3) {
		if (obj_Players.earthBlock) {
			obj_Players.earthBlock = false;
			is_knocked_back = sign(x - other.x);
		} else {
			is_knocked_back = sign(x - other.x);
			healthPoints = healthPoints - (obj_Slime.damage / 2);
		}
	} else {
		is_knocked_back = sign(x - other.x);
		healthPoints = healthPoints - obj_Slime.damage;
	}
	invincibility = 0;
}
