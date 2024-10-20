/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	if (obj_player.canMove == false)
	{
		obj_player.canMove = true;
	}
}