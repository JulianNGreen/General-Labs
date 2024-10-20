/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))) {
	if(object_exists(obj_inventory)) {
		
		current_piece = {name: "chess_piece", 
		object: obj_chess_gen, 
		sprite: spr_chess_piece_inventory,
		hover: false};
		obj_inventory.inventory[0] = current_piece;
		obj_inventory.currItem = current_piece;
	}
}