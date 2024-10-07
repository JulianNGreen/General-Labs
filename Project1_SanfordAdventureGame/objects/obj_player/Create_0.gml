/// @description Insert description here
// You can write your code in this editor

function getNumPress()
{
	var numPressed = -1;
	for (var i = 1; i < 10; i++)
	{
		var str = string("{0}",i);
		if (keyboard_check_pressed(ord(str)))
		{
			numPressed = i;
			break;
		}
	}
	return numPressed
}

#region Sprite Initialization
depth = 0;
image_index = 0;
image_speed = 0;

#endregion

#region Player Variables
moveSpeed = 3;
moveSpeed_diag = round(sqrt(moveSpeed^2 + moveSpeed^2));
moveVector_x = 0;
moveVector_y = 0;

player_inv = Inventory();
currItem = noone;

#endregion