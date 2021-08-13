///scr_get_string_overflow(string, font, width)
var str = argument0;
var font = argument1;
var width = argument2;

var trimmedString = scr_string_trim(str, font, width);
var length = string_length(str);
var trimmedLength = string_length(trimmedString);

var overflow = length - trimmedLength;
return overflow;
