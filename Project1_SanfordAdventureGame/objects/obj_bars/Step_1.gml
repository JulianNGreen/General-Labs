/// @description Insert description here
// You can write your code in this editor

with (obj_player)
{
	if (point_distance(x,y,other.x,other.y) <= MAX_PICKUP_DISTANCE*2)
	{
		if (keyboard_check_pressed(ord("E")))
		{
			if (player_inv.currItem != noone)
			{
				if (player_inv.currItem.object == obj_item)
				{
					player_inv.currItem = noone;
					player_inv.deselect();
					player_inv.remove(0);
					instance_destroy(other);
				}
			}
			else
			{
				call_dialogue("It's locked");
				alarm[0] = 200;
			}
		}
	}
}