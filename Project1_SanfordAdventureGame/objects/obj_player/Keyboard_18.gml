/// @description DEBUG ---> REMOVE
// You can write your code in this editor
if (keyboard_check_pressed(ord("P")))
{
	call_dialogue("I can make text appear with alt!");
	alarm[0] = 200;
}

if (keyboard_check_pressed(ord("N")))
{
	room_goto_next();
}

if (keyboard_check_pressed(ord("R")))
{
	room_goto(rm_sanford_run_1);
}

if (keyboard_check_pressed(ord("T")))
{
	room_goto(rm_sanford_run_2);
}