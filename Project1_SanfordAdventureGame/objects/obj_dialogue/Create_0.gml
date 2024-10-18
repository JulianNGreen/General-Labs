/// @description Insert description here
// You can write your code in this editor
text_current = 0;
text[0] = "This is a test string";

text_last = 0;

text_width = 300;

text_x = 32;

text_y = 32;
char_current = 1;

char_speed = 0.25;
text[text_current] = string_wrap(text[text_current], text_width);

