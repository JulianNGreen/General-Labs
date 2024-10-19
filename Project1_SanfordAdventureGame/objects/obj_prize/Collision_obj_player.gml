/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	score++;
	instance_destroy();
	call_dialogue("Wicked sick, like totally rad man, item collected");
}