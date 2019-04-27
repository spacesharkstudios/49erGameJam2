healthPoints = healthPoints - obj_EnemyChargerAttack.damage;

if(enemyChargerCooldown >= 20){
	healthPoints = healthPoints - obj_EnemyChargerAttack.damage;
}
 enemyChargerCooldown = 0;