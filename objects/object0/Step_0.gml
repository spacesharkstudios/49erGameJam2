var input_left = keyboard_check(key_left);
var input_right = keyboard_check(key_right);
var input_jump = keyboard_check(vk_space);

var move = input_right - input_left;
var horizontal = move * playerSpeed;
vertical = vertical + playerGravity;

if (place_meeting(x + horizontal, y, obj_Wall)) {
			while (!place_meeting(x + sign(horizontal), y, obj_Wall)) {
				x += sign(horizontal);
			}
} else {
			x += horizontal;
			}
		