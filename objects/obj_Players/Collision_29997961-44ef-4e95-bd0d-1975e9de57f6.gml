
if(enemySlimeCooldown >= 20){
	
	if(state == 3){
		healthPoints = healthPoints - (obj_Slime.damage / 2);
	}
	else{
		healthPoints = healthPoints - obj_Slime.damage;
	}
	enemySlimeCooldown = 0;
}