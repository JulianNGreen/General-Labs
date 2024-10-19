/// @description Insert description here
// You can write your code in this editor

if (pickupTarget || instance_place(x,y,obj_floor_plug))
{
	draw_sprite(spr_interact,0,x-(sprite_width/4)*image_xscale,y-sprite_height);
}