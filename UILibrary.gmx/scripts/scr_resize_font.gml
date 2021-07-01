///scr_resize_font(font, scale)
var font = argument0;
var scale = argument1;

var fontName = font_get_name(font);
var displayFont = asset_get_index(fontName + "_display");

//Getting original font information
var name = font_get_fontname(font);
var size = font_get_size(font);
var bold = font_get_bold(font);
var italic = font_get_italic(font);
var first = font_get_first(font);
var last = font_get_last(font);
    
//Adjusting size
size = size * scale;
    
//Creating new displayFont
var newFont = font_add(name, size, bold, italic, first, last);


return newFont;
