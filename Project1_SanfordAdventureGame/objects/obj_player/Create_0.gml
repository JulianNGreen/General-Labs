/// @description Insert description here
// You can write your code in this editor
#macro MAX_PICKUP_DISTANCE 16

#region Sprite Initialization
depth = 0;
image_index = 0;
image_speed = 0;
canInteract = true;

#endregion

#region Camera Initialization
initCamera();

#endregion

#region Player Variables
moveSpeed = 3;
moveSpeed_diag = 2;
moveVector_x = 0;
moveVector_y = 0;

#region Player Inventory Object
player_inv = instance_create_layer(0,0,"Instances",obj_inventory);
pickupTarget = noone;

#endregion

#endregion