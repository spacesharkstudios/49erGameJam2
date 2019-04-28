

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
	
	if (obj_Players.facing == 1) {
		instance_create_layer(obj_Players.x + 20, obj_Players.y + 60, "instances", obj_EarthSpecial);
	} else {
		instance_create_layer(obj_Players.x -20 , obj_Players.y + 60, "instances", obj_EarthSpecial);
	}
	
} else {
	
	if (obj_Players.facing == 1) {
		instance_create_layer(obj_Players.x + 65, obj_Players.y + 60, "instances", obj_AirSpecial);
	} else {
		instance_create_layer(obj_Players.x -65 , obj_Players.y + 60, "instances", obj_AirSpecial);
	}
}

obj_Players.specialAttactCooldown = 20;
