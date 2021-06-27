///scr_string_trim(string, font, width)
var str = argument0;
var font = argument1;
var width = argument2;

draw_set_font(font);
while(string_width(str) > width)
{
    var length = string_length(str);
    str = string_delete(str, length, 1);
}

return str;
