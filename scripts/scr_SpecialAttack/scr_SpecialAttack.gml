

if (obj_Players.state == 1) {
	
	if (obj_Players.facing == 1) {
		instance_create_layer(obj_Players.x + 20, obj_Players.y + 10, "instances", obj_FireSpecial);
	} else {
		instance_create_layer(obj_Players.x -20 , obj_Players.y + 10, "instances", obj_FireSpecial);
	}
	scr_PlayAudio(sfx_spec_fire);
	
} else if (obj_Players.state == 2) {
	
	instance_create_layer(obj_Players.x, obj_Players.y, "instances", obj_WaterSpecial);
	scr_PlayAudio(sfx_spec_heal);
	
} else if (obj_Players.state == 3) {
	scr_PlayAudio(sfx_spec_dirt);
} else {
	scr_PlayAudio(sfx_spec_lit);
}

obj_Players.specialAttactCooldown = 20;