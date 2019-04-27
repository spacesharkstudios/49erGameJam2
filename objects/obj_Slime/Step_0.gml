
horizontal = enemySpeed * moving

event_inherited()
if (knockback != 0) {
	moving = knockback / abs(knockback)
}

x += horizontal

if (HP <= 0) {
	obj_Players.manaPoints = obj_Players.manaPoints + manaReward
	instance_destroy();
}

if (moving == 1) {
	sprite_index = spr_EnemySlime_RollBackward
} else {
	sprite_index = spr_EnemySlime_RollForward
}

attackCooldown++;
damageCooldown++;
