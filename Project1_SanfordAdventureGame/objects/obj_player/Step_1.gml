/// @description Movement and collisions
// You can write your code in this editor

#region Inventory

var numPress = getNumPress();
if (numPress != -1)
{
	show_debug_message("numPress: {0}", numPress);
	with(player_inv)
	{
		select(numPress);
		currItem = get(numPress);
	}
}

#region Pickup
// Check for target
with(obj_item)
{
	var item_distance = point_distance(x,y,other.x,other.y);
	if (item_distance < MAX_PICKUP_DISTANCE)
	{
		other.pickupTarget = id;
	}
	else
	{
		other.pickupTarget = noone;
	}
}

if (pickupTarget && keyboard_check_pressed(ord("E")))
{
	var item = layer_instance_get_instance(pickupTarget);
	player_inv.add(item.item_id.name,item.item_id.object,item.item_id.sprite);
	instance_destroy(item);
}

#endregion

#endregion

#region Movement

#region Speed Calculation
moveVector_x = (keyboard_check(vk_right)-keyboard_check(vk_left));
moveVector_y = (keyboard_check(vk_down)-keyboard_check(vk_up));
var objSpeed = moveSpeed;

// Handle diagonal movement
if (moveVector_x != 0 && moveVector_y != 0)
{
	objSpeed = moveSpeed_diag;
}

var move_x = objSpeed*moveVector_x;
var move_y = objSpeed*moveVector_y;

#endregion

#region Collisions
if instance_place(x+move_x,y+move_y,obj_block)
{
	move_x = 0;
	move_y = 0;
}

// Once calculations and collisions have been handled, move player
x += move_x;
y += move_y; 

#endregion

#endregion