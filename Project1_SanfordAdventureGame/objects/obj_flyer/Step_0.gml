/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < attack_range) {
	paused_path_pos = path_position
	path_end()
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = hsp
	time_out = 1
} else if (time_out >= 1 && (distance_to_object(obj_player) > attack_range)) {
	time_out += 30
	if (time_out >= Teleport_Delay) {
		path_start(path_jEnemy, hsp, path_action_restart, true);
		path_position = paused_path_pos
		time_out = 0
	}
}