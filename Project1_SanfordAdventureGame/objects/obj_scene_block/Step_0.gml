/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_player))
{
	if (instance_place(x,y,obj_player))
	{
		obj_player.canMove = false;
	}
}