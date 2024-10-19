/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	if(obj_inventory.currItem != noone && canInteract) {
		alarm[1] = 20;
		canInteract = false;
		if(obj_inventory.currItem.object == obj_victory_rook) {
			call_dialogue("It worked!");
			with obj_victory_rook {
				x = 896;
				y = 304;
			}
			var prize = instance_create_layer(928, 224,"Instances",obj_prize);
			prize.activate_portal = hidden_portal;
		}else {
			call_dialogue("That didn't seem like the right move");
		}
	}
	alarm[0] = 200;
}