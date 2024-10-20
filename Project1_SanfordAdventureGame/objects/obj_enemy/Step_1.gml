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
		path_positionMarker = path_position;
		currState = States.CHASE;
	}
}

#endregion

#region Chase
if (currState == States.CHASE || currState == States.BORED)
{	
	#region Movement and collision
	var objSpeed = moveSpeed;
	if (currState == States.CHASE && instance_exists(obj_player))
	{
		var delta_x = obj_player.x - x;
		var delta_y = obj_player.y - y;
	}
	else if (currState == States.BORED)
	{
		var delta_x = path_x_previous - x;
		var delta_y = path_y_previous - y;
	}
	
	if (abs(delta_x) > 3 && abs(delta_y) > 3)
	{
		objSpeed = moveSpeed_diag;
		moveVector_x = sign(delta_x)*1;
		moveVector_y = sign(delta_y)*1;
	}
	else if (abs(delta_x) > 3)
	{
		moveVector_x = sign(delta_x)*1;
		moveVector_y = 0;
	}
	else if (abs(delta_y) > 3)
	{
		moveVector_x = 0;
		moveVector_y = sign(delta_y)*1;
	}
	var move_x = objSpeed*moveVector_x;
	var move_y = objSpeed*moveVector_y;
	
	#endregion
	
	#region Collision
	if (currState == States.CHASE)
	{
		var i = 0;
		while(instance_place(x+move_x,y+move_y,obj_block))
		{	
			if (i == 2)
			{
				move_x = 0;
				move_y = 0;
				break;
			}
			
			if (instance_place(x,y+move_y,obj_block))
			{
				move_x = objSpeed*moveVector_x;
				move_y = 0;
			}
			else
			{
				move_y = objSpeed*moveVector_y;
				move_x = 0;
			}
			
			i++;
		}
	}
	x += move_x;
	y += move_y;
	
	#endregion
	
	#region Patrol transition
	if (currState == States.BORED && abs(delta_x) < 3 && abs(delta_y) < 3)
	{
		currState = States.PATROL;
		path_start(path_id,moveSpeed/2,path_action_continue,true);
		path_position = path_positionMarker;
	}
	
	#endregion
	
	#region Bored transition
	if (currState == States.CHASE && point_distance(x,y,path_x_previous,path_y_previous) >= MAX_TETHER_DISTANCE)
	{
		currState = States.BORED;	
	}
	
	#endregion
}

#endregion