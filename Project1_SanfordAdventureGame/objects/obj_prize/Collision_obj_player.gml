/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	score = score_amount;
	instance_destroy();
	call_dialogue(itemAcquired);
}