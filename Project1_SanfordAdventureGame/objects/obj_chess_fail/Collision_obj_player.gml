/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E")) && obj_chess_gen.link == true) {
	obj_chess_gen.link = false;
	call_dialogue("That didn't seem like the right move");
}
