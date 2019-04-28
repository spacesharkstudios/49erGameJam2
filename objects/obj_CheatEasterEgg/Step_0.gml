/// @description Insert description here
// You can write your code in this editor
if current_code<7
{
if keyboard_check_pressed(code[current_code])
{
current_code+=1
}
if mouse_check_button_pressed(code[current_code])
{
current_code+=1
}
}
if current_code=7
{
audio_play_sound(bgm_win,15,1)
} 