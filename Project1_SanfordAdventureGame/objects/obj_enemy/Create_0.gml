/// @description Insert description here
// You can write your code in this editor
#macro MAX_DETECTION_DISTANCE 64
#macro MAX_TETHER_DISTANCE MAX_DETECTION_DISTANCE*5


#region Sprite Initialization
depth = 2;

#endregion

#region Enemy Variables
enum States {
	PATROL,
	CHASE,
	BORED
}

moveSpeed = obj_player.moveSpeed - 1;
moveSpeed_diag = round(sqrt(moveSpeed^2 + moveSpeed^2));
moveVector_x = 0;
moveVector_y = 0;

path_x_previous = 0;
path_y_previous = 0;
path_positionMarker = 0;

path_start(path_id,moveSpeed/2,path_action_continue,true);
currState = States.PATROL;

#endregion