
if (enemyChargerCooldown >= 20) {
	healthPoints = healthPoints - other.damage;
	enemyChargerCooldown = 0;
	is_knocked_back = sign(x - other.x)
}