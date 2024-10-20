/// @description Insert description here
// You can write your code in this editor
// Thank you Toby Fox for your contribution to GAMING
// Truly we walk in your footsteps
if(triggered = false) {
	//triggered = true;
	switch (cut_scene_number) {
    case 1:
        call_dialogue_at_position("You made it the end", 30, 65, 200 );
    break;
    case 2:
		switch(progress) {
		case 1:
		if(wait == false) {
			instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_scene_block)
			call_dialogue_at_position("You're the first person I've seen... in a while!", 1050, 490, 220 );
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 2:
		if(wait == false) {
			call_dialogue_at_position("I don't know how you ended up in this dusty building,", 1050, 490, 180 );
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 3:
		if(wait == false) {
			call_dialogue_at_position("but I can help you escape.", 1050, 490, 180 );
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 4:
		if(wait == false) {
			call_dialogue_at_position("I've unlatched the rest of Sandford for you to progress,", 1050, 490, 180);
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 5:
		if(wait == false) {
			call_dialogue_at_position("Good luck!", 1050, 490, 180);
			wait = true
			alarm[0] = 100
			progress++;
		}
		case 6:
		if(wait == false) {
			call_dialogue_at_position("THIS LINE SHOULD NOT BE SEEN", 1050, 490, 180);
			wait = true
			alarm[0] = 100
			progress++;
		}
			break;
			
		default:
			dr_sandford_exit.isLocked = false;
			instance_destroy(obj_sally);
			instance_destroy(obj_scene_block);
			instance_destroy(obj_dialogue);
	        instance_destroy(obj_cutscene_trigger);
		}
	case 3:
	switch(progress) {
		case 1:
		if(wait == false) {
			instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_scene_block)
			call_dialogue_at_position("You made it all the way to the end,", 825, 200, 200 );
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 2:
		if(wait == false) {
			call_dialogue_at_position("The exit is behind me.", 825, 200, 120 );
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 3:
		if(wait == false) {
			call_dialogue_at_position("You can escape Sanford,", 825, 200, 120 );
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 4:
		if(wait == false) {
			call_dialogue_at_position("just like everyone always does. ;(", 825, 200, 120);
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 5:
		if(wait == false) {
			call_dialogue_at_position("Why did you come here?", 825, 200, 120);
			wait = true
			alarm[0] = 200
			progress++;
		}
		case 6:
		if(wait == false) {
			obj_party.fade_in = false;
			call_dialogue_at_position("You came to release me?", 825, 200, 120);
			wait = true
			alarm[0] = 150
			progress++;
		}
		case 7:
		if(wait == false) {
			call_dialogue_at_position("...", 825, 200, 120);
			wait = true
			alarm[0] = 200
			progress++;
		}
		case 8:
		if(wait == false) {
			call_dialogue_at_position("Thank You! Thank You!", 825, 200, 120);
			wait = true
			alarm[0] = 150
			progress++;
		}
		case 9:
		if(wait == false) {
			call_dialogue_at_position("...", 825, 200, 120);
			wait = true
			alarm[0] = 100
			progress++;
		}
		case 10:
		if(wait == false) {
			call_dialogue_at_position("thank you, I can finally rest.", 825, 200, 120);
			wait = true
			alarm[0] = 300
			progress++;
		}
		case 11:
		if(wait == false) {
			call_dialogue_at_position("Goodbye, friend.", 825, 200, 120);
			wait = true
			alarm[0] = 150
			progress++;
		}
		case 12:
		if(wait == false) {
			call_dialogue_at_position("THIS LINE SHOULD NOT BE SEEN", 1050, 490, 180);
			wait = true
			alarm[0] = 100
			progress++;
		}
			break;
			
		default:
			dr_win.isLocked = false;
			instance_destroy(obj_sally);
			instance_destroy(obj_scene_block);
			instance_destroy(obj_dialogue);
		    instance_destroy(obj_cutscene_trigger);
	}
	break;
    default:
        call_dialogue("This is the default case");
	}
}