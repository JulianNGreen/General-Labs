// None of this could exist without the great people of gamemaker tutorials
// https://gamemaker.io/en/tutorials/coffee-break-tutorial-easy-typewriter-dialogue-gml

function call_dialogue(text_field) {
	var _inst = instance_create_layer(x, y, "Instances", obj_dialogue);

	with(_inst)
	{
		text[0] = text_field;
		show_debug_message("entered text event");
		text_last = 0;
		text_width = 150;
		text_x = obj_player.x - (text_width/4);
		text_y = obj_player.y - 40;
		//instance_create_layer(x + 20, y - 30, "Instances", obj_button_generic)
		text[text_current] = string_wrap(text[text_current], text_width);
	}
}
function call_dialogue(text_field, x_offset, y_offset) {
	var _inst = instance_create_layer(x, y, "Instances", obj_dialogue);

	with(_inst)
	{
		text[0] = text_field;
		show_debug_message("entered text event");
		text_last = 0;
		text_width = 150;
		text_x = obj_player.x - (text_width/4);
		text_y = obj_player.y - 40;
		//instance_create_layer(x + 20, y - 30, "Instances", obj_button_generic)
		text[text_current] = string_wrap(text[text_current], text_width);
	}
}

function string_wrap(_text, _width)

{

var _text_wrapped = "";

var _space = -1;

var _char_pos = 1;

while (string_length(_text) >= _char_pos)

    {

    if (string_width(string_copy(_text, 1, _char_pos)) > _width)

        {

        if (_space != -1)

            {

            _text_wrapped += string_copy(_text, 1, _space) + "\n";

            _text = string_copy(_text, _space + 1, string_length(_text) - (_space));

            _char_pos = 1;

            _space = -1;

            }

        }

    if (string_char_at(_text,_char_pos) == " ")

        {

        _space = _char_pos;

        }

    _char_pos += 1;

    }

if (string_length(_text) > 0)

    {

    _text_wrapped += _text;

    }

return _text_wrapped;

}
