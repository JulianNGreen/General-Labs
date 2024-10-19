/// @description Teleport logic
// You can write your code in this editor

if(keyboard_check_pressed(ord("E")) && !isLocked) 
{
	if (isExit)
	{
		room_goto(next_room_index);
		initCamera();
	}
	else
	{
		obj_player.x = companion_id.x;
		obj_player.y = companion_id.y - 4;
	}
}