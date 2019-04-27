
if (is_knocked_back != 0) {
	knockback = knockback_time * is_knocked_back
	is_knocked_back = 0
	vertical = knockback_force_vertical
}

if (knockback != 0) {
	pos = sign(knockback)
	knockback -= pos
	horizontal = pos * knockback_force_horizontal
}
