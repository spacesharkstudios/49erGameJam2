
// knockback physics
event_inherited()

vertical = vertical + object_gravity;

// vertical movement
if (place_meeting(x, y + vertical, obj_Wall)) {
	while (!place_meeting(x, y + sign(vertical), obj_Wall)) {
		y += sign(vertical);
	}
	vertical = 0;
	jumped = false;
}
y += vertical;
