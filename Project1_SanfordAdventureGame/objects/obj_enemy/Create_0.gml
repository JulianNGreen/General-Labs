/// @description Insert description here
// You can write your code in this editor

#region Sprite Initialization
depth = 2;

#endregion

#region Enemy Variables
enum States {
	PATROL,
	CHASE,
	BORED
}

moveSpeed = obj_player.moveSpeed++;
moveSpeed_diag = round(sqrt(moveSpeed^2 + moveSpeed^2));
moveVector_x = 0;
moveVector_y = 0;

movePath = noone;

#endregion