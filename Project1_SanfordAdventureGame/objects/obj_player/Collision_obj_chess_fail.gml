/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	if(obj_inventory.currItem != noone && canInteract) {
		instance_destroy(obj_dialogue);
		alarm[0] = 200;
		alarm[1] = 20;
		call_dialogue("That didn't seem like the right move");
		canInteract = false;
	}
}