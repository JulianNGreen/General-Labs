/// @description Insert description here
// You can write your code in this editor

var isClose_plug = false;
if(instance_exists(obj_floor_plug))
{
	with (obj_floor_plug)
	{
		if (point_distance(x,y,other.x,other.y) <= MAX_PICKUP_DISTANCE)
		{
			isClose_plug = true;
			break;
		}
	}
}

var isClose_bar = false;
if(instance_exists(obj_bars))
{
	with (obj_bars)
	{
		if (point_distance(x,y,other.x,other.y) <= MAX_PICKUP_DISTANCE*2)
		{
			isClose_bar = true;
			break;
		}
	}
}

if (pickupTarget || isClose_plug || isClose_bar)
{
	draw_sprite(spr_interact,0,x-(sprite_width/4)*image_xscale,y-sprite_height);
}