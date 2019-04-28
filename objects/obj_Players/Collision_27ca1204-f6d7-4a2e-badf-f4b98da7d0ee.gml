
if(enemyChargerCooldown >= 20){
	
	if(state == 3){
		healthPoints = healthPoints - (obj_EnemyChargerAttack.damage / 2);
	}
	else{
		healthPoints = healthPoints - obj_EnemyChargerAttack.damage;
	}
	enemyChargerCooldown = 0;
}