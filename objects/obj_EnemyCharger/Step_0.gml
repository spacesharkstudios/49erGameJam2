// moves enemy towards player
if(distance_to_object(obj_Players) > 10){
	move_towards_point(obj_Players.x, obj_Players.y, enemySpeed);
}
else{
	speed = 0;
}

