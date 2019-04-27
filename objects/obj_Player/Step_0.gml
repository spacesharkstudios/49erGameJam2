var input_left = keyboard_check(key_left);
var input_right = keyboard_check(key_right);
var input_jump = keyboard_key_press(vk_space);

var move = input_right - input_left;
var horizontal = move * playerSpeed;
vertical = vertical + playerGravity;


// horizontal movement
if (place_meeting(x + horizontal, y, obj_Wall)) {
	
	while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
		x += sign(horizontal);
	}
} else {
	x += horizontal;
}




// vertical movement
if (place_meeting(x, y + vertical, obj_Wall)) {
	while (!place_meeting(x, y + sign(vertical), obj_Wall)) {
		y += sign(vertical);
	}
	vertical = 0;
}
y += vertical;


// jumping
if (place_meeting(x, y + 1, obj_Wall) && (input_jump)) {
	vertical = -30; 
}




