/// @description Enemy AI
// You can write your code in this editor

#region Patrolling
if (currState == States.PATROL && instance_exists(obj_player))
{
	#region Movement
	var delta_x = x - path_x_previous;
	var delta_y = y - path_y_previous;
	
	moveVector_x = sign(delta_x)*1;
	moveVector_y = sign(delta_y)*1;
	
	path_x_previous = x;
	path_y_previous = y;
	
	#endregion
	
	var playerDistance = point_distance(obj_player.x,obj_player.y,x,y);
	if (playerDistance <= MAX_DETECTION_DISTANCE)
	{
		path_end();
		currState = States.CHASE;
	}
}

#endregion

#region Chase
if (currState == States.CHASE && instance_exists(obj_player))
{	
	#region Movement and collision
	var objSpeed = moveSpeed;
	var delta_x = obj_player.x - x;
	var delta_y = obj_player.y - y;
	if (delta_x != 0 && delta_y != 0)
	{
		objSpeed = moveSpeed_diag;
		moveVector_x = sign(delta_x)*1;
		moveVector_y = sign(delta_y)*1;
	}
	else if (delta_x != 0)
	{
		moveVector_x = sign(delta_x)*1;
		moveVector_y = 0;
	}
	else if (delta_y != 0)
	{
		moveVector_x = 0;
		moveVector_y = sign(delta_y)*1;
	}
	var move_x = objSpeed*moveVector_x;
	var move_y = objSpeed*moveVector_y;
	
	#endregion
	
	#region Collision
	while(instance_place(x+move_x,y+move_y,obj_block))
	{
		if (delta_x != 0)
		{
			move_y = move_x;
			move_x = 0;
		}
		else if (delta_y != 0)
		{
			move_x = move_y;
			move_y = 0;
		}
	}
	x += move_x;
	y += move_y;
	
	#endregion
}

#endregion