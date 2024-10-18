/// @description Draw inventory hotbar
// You can write your code in this editor

var playerViewport = room_get_viewport(room,0);
var viewportWidth = playerViewport[3];
var viewportHeight = playerViewport[4];
var spacing = sprite_get_width(spr_inventory_slot)*2;

var numIterations = floor(inventory_maxItems/2);

for (var i = 0; i <= numIterations; i++)
{
	if (i != 0) 
	{
		draw_sprite(spr_inventory_slot,0,x+(viewportWidth/2)+(-i*spacing),y+viewportHeight-spacing);
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
	draw_sprite(spr_inventory_slot,0,x+(viewportWidth/2)+(i*spacing),y+viewportHeight-spacing);
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