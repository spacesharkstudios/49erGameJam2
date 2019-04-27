
if (other.y <= y + 32) {
	moving = abs(x - other.x) / (x - other.x)
	if (moving == 1) {
		sprite_index = spr_EnemySlime_RollBackward
	} else {
		sprite_index = spr_EnemySlime_RollForward
	}
}
