/// @description Draw inventory hotbar
// You can write your code in this editor

show_debug_message("Max Items: {0}", inventory_maxItems);
for (i = 0; i < inventory_maxItems; i++)
{
	draw_sprite(spr_inventory_slot,0,x+(room_width/2)+(i*16*2),y+room_height-(16*2));	
}