// moves enemy towards player
if (instance_exists(obj_Players)) {
	if (distance_to_object(obj_Players) > 20) {
		move_towards_point(obj_Players.x, obj_Players.y, enemySpeed);
		gotThere = false;
	} else {
		speed = 0;
		gotThere = true;
	}


	if ((gotThere) && (attackCooldown >= 80)) {
		if (x > obj_Players.x) {
			instance_create_layer(x - 64, y, "instances", obj_EnemyChargerAttack);
		} else {
			instance_create_layer(x + 64, y, "instances", obj_EnemyChargerAttack);
		}
		attackCooldown = 0;
	}

	if (HP <= 0) {
		instance_destroy();
	}

	attackCooldown++;
	damageCooldown++;
}