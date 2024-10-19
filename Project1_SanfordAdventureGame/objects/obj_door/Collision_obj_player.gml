/// @description Teleport logic
// You can write your code in this editor

if(keyboard_check_pressed(ord("E")) && !isLocked) 
{
	if (isExit)
	{
		room_goto(next_room_index);
		initCamera();
		audio_play_sound(snd_teleport, 1, false);
	}
	else
	{
		obj_player.x = companion_id.x + 4;
		obj_player.y = companion_id.y - 4;
		audio_play_sound(snd_teleport, 1, false);
	}
}