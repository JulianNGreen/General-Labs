/// @description Insert description here
///You can write your code in this editor

if(fade_in == false) {
	fade_in = true
	if(image_alpha < 1) {
		image_alpha = image_alpha + .05;
		alarm[2] = 5
	}
	else { 
		fade_in = true;
	}
}
