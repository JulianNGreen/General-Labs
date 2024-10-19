/// @description Draw inventory hotbar
// You can write your code in this editor

var viewportWidth = window_get_width();
var viewportHeight = window_get_height();
var spacing = sprite_get_width(spr_inventory_slot)*2;

var numIterations = floor(inventory_maxItems/2);

for (var i = 0; i <= numIterations; i++)
{
	if (i != 0) 
	{
		draw_sprite(spr_inventory_slot,0,x+(viewportWidth/2)+(-i*spacing),viewportHeight-spacing);
		if(numIterations-i < array_length(inventory))
		{
			var item_sprite = inventory[numIterations-i].sprite;
			draw_sprite(item_sprite,0,x+(viewportWidth/2)+(-i*spacing),y+viewportHeight-spacing);
			if (inventory[numIterations-i].hover == true)
			{
				draw_sprite(spr_inventory_select,0,x+(viewportWidth/2)+(-i*spacing),y+viewportHeight-spacing);
			}
		}
	}
	draw_sprite(spr_inventory_slot,0,x+(viewportWidth/2)+(i*spacing),viewportHeight-spacing);
	if(numIterations+i < array_length(inventory))
	{
		var item_sprite = inventory[numIterations+i].sprite;
		draw_sprite(item_sprite,0,x+(viewportWidth/2)+(i*spacing),y+viewportHeight-spacing);
		if (inventory[numIterations+i].hover == true)
		{
			draw_sprite(spr_inventory_select,0,x+(viewportWidth/2)+(i*spacing),y+viewportHeight-spacing);
		}
	}
}