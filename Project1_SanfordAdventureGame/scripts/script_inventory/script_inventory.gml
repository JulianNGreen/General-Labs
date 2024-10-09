// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//
// Credits:
// "GameMaker Casts". "Creating a Simple Inventory System in GameMaker - Tutorial". YouTube.
// https://www.youtube.com/watch?v=qiz-wt7Mb9g

function Inventory(maxItems = 5) constructor
{
	inventory = [];
	inventory_maxItems = maxItems;
	
	#region Setters
	add = function(spr,nm,obj)
	{
		if (array_length(inventory) < inventory_maxItems)
		{
			array_push(inventory,{
				sprite: spr,
				name: nm,
				object: obj,
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
		if (index < inventory_maxItems) {return inventory[index];}
	}
	select = function(index) 
	{
		if (index < inventory_maxItems)
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
	
	#endregion
}