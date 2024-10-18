/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("E"))) {
	instance_destroy();
	instance_create_layer(895,153, "Instances", obj_prize)
}