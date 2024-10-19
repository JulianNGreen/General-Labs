/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	if(canInteract) {
		alarm[1] = 20;
		canInteract = false;
	}
	if(obj_inventory.currItem.object == obj_victory_rook) {
		call_dialogue("It worked!");
	}else {
		call_dialogue("That didn't seem like the right move");
	}
	alarm[0] = 200;
}