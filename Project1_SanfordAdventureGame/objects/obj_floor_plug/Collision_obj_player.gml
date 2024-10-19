/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E")) && can_interact = true) {
	if(object_exists(obj_charge)) {
		show_debug_message("DISTANCE: {0}", distance_to_object(obj_charge))
		if(distance_to_object(obj_charge) < 10)
		{
		
		}
		else if(distance_to_object(obj_charge) < 120)
		{
			call_dialogue("You are close")
		} else if(distance_to_object(obj_charge) < 220)
		{
			call_dialogue("You are closer")
		} else if(distance_to_object(obj_charge) < 620)
		{
			call_dialogue("You are far")
		}
	}
	else {
		call_dialogue("The charge is all used up")
	}
	can_interact = false;
	alarm[0] = 100
	
}