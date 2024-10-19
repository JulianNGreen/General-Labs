/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E")) && can_interact = true) {
	if(object_exists(obj_charge)) {
		show_debug_message("DISTANCE: {0}", distance_to_object(obj_charge))
		if(distance_to_object(obj_charge) < 10)
		{
		
		}
		else if(distance_to_object(obj_charge) < 90)
		{
			call_dialogue("You are burning hot");
		} else if(distance_to_object(obj_charge) < 170)
		{
			call_dialogue("You are hot");
		} else if(distance_to_object(obj_charge) < 250)
		{
			call_dialogue("You are neutral");
		} else if(distance_to_object(obj_charge) < 330)
		{
			call_dialogue("You are cold");
		} else if(distance_to_object(obj_charge) < 410)
		{
			call_dialogue("You are freezing cold");
		}
	}
	else {
		call_dialogue("The charge is all used up")
	}
	can_interact = false;
	alarm[0] = 100
	
}