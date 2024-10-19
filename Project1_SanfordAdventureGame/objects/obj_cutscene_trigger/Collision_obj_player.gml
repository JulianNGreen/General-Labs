/// @description Insert description here
// You can write your code in this editor
if(triggered = false) {
	triggered = true;
	switch (cut_scene_number) {
    case 1:
        call_dialogue_at_position("You made it the end", 30, 65 );
    break;

    case 2:
        call_dialogue("This is a test case");
    break;
    
    // more cases (with breaks)

    default:
        call_dialogue("This is the default case");
	}
}