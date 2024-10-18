// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//
// Credits:
// "GameMaker Casts". "Creating a Simple Inventory System in GameMaker - Tutorial". YouTube.
// https://www.youtube.com/watch?v=qiz-wt7Mb9g

function getNumPress()
{
	var numPressed = -1;
	for (var i = 1; i < 10; i++)
	{
		var str = string("{0}",i);
		if (keyboard_check_pressed(ord(str)))
		{
			show_debug_message(str);
			numPressed = i;
			break;
		}
	}
	return numPressed
}

function Inventory(maxItems = 5) constructor
{
	inventory = [];
	inventory_maxItems = maxItems;
	
	#region Setters
	add = function(nm,obj,spr)
	{
		if (array_length(inventory) < inventory_maxItems)
		{
			array_push(inventory,{
				name: nm,
				object: obj,
				sprite: spr,
				hover: false
			});
		}
	}
	remove = function(index) {array_delete(inventory,index,1);}
	
	#endregion
	
	#region Getters
	getAll = function() {return inventory;}
	get = function(index) 
	{
		if (isInInventory(index)) {return inventory[index];}
	}
	select = function(index) 
	{
		show_debug_message("Accessing inventory...");
		if (isInInventory(index))
		{
			deselect();
			inventory[index].hover = true;
		}
	}
	deselect = function() 
	{
		for (var i = 0; i < array_length(inventory); i++)
		{
			inventory[i].hover = false;
		}
	}
	isInInventory = function(index)
	{
		if(index < inventory_maxItems && index < array_length(inventory))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	
	#endregion
}