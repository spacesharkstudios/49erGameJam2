/// @description Insert description here
// You can write your code in this editor
if (playerisdead) {
	counter++;
}
if (counter % 180 = 0) {
	room_goto(Death);
	playerisdead = false;
	counter = 1;
	scr_PlayAudio(bgm_lose);
}
