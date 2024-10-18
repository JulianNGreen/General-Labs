/// @description Insert description here
// You can write your code in this editor
if(teleport == true) {
	randomise();
	_n = irandom(15);
	_jump_location = instance_find(obj_floor_plug, _n);
	
	show_debug_message("Test: {0}", _n);
	x = _jump_location.x;
	y = _jump_location.y;
	teleport = false;
	alarm[0] = wait_time;
}


