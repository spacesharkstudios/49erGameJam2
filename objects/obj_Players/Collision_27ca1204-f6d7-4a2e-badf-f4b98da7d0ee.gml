healthPoints = healthPoints - obj_EnemyChargerAttack.damage;

if(enemyChargerCooldown >= 80){
	healthPoints = healthPoints - obj_EnemyChargerAttack.damage;
}
 enemyChargerCooldown = 0;