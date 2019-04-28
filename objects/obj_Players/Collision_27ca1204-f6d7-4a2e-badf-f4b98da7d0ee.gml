
if(enemySlimeCooldown >= 20){
	healthPoints = healthPoints - obj_EnemyChargerAttack.damage;
	enemySlimeCooldown = 0;
	is_knocked_back = sign(x - other.x)
}