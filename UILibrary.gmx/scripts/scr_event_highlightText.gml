///scr_event_highlightText(id)
var sender = argument0;

var originalColor = sender.textColor;

var R = lerp(color_get_red(originalColor), color_get_red(c_white), 0.4);
var G = lerp(color_get_green(originalColor), color_get_green(c_white), 0.4);
var B = lerp(color_get_blue(originalColor), color_get_blue(c_white), 0.4);
sender.displayTextColor = make_color_rgb(R,G,B);
