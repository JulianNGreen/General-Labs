/// @description Movement, inventory and collisions
// You can write your code in this editor

#region Check enemy collision
if (instance_place(x,y,obj_enemy))
{
	audio_stop_sound(snd_step_enemy);
	audio_play_sound(snd_teleport, 1, false);
	room_restart();
}

#endregion

#region Inventory

var numPress = getNumPress();
if (numPress != -1)
{
	show_debug_message("numPress: {0}", numPress);
	with(player_inv)
	{
		select(numPress-1);
		currItem = get(numPress-1);
	}
}

#region Pickup
// Check for target
if (!pickupTarget)
{
	with(obj_item)
	{
		var item_distance = point_distance(x,y,other.x,other.y);
		if (item_distance < MAX_PICKUP_DISTANCE)
		{
			other.pickupTarget = id;
		}
	}
}
else
{
	with(pickupTarget)
	{
		var item_distance = point_distance(x,y,other.x,other.y);
		if (item_distance > MAX_PICKUP_DISTANCE)
		{
			other.pickupTarget = noone;
		}
	}
}

if (pickupTarget && keyboard_check_pressed(ord("E")))
{
	var item = pickupTarget.item_id;
	player_inv.add(item.name,item.object,item.sprite);
	instance_destroy(pickupTarget);
	pickupTarget = noone;
}

#endregion

#endregion

#region Movement

if (canMove)
{
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
}

#endregion

#endregion