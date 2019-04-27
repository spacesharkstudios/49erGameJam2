// update variables
if(instance_exists(obj_Players)){
	xTo = obj_Players.x;
	yTo = obj_Players.y;
	
}

// update position
x += (xTo - x);
y += (yTo - y);



//clamping
x = clamp(x, halfPortW, room_width - halfPortW);
y = clamp(y, halfPortH, room_width - halfPortH);

camera_set_view_pos(cam, x - halfPortW, y - halfPortH);