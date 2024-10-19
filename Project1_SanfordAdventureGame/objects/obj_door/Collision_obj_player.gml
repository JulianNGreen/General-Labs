/// @description Teleport logic
// You can write your code in this editor

if(keyboard_check_pressed(ord("E")) && !isLocked) 
{
	if (isExit)
	{
		audio_play_sound(snd_teleport, 1, false);
		room_goto(next_room_index);
		initCamera();
	}
	else
	{
		audio_play_sound(snd_teleport, 1, false);
		obj_player.x = companion_id.x + 4;
		obj_player.y = companion_id.y - 4;
	}
}