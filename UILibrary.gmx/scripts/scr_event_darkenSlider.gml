///scr_event_darkenSlider(id)
var sender = argument0;

var originalBlockColor = sender.blockColor;
var originalBarColor = sender.barColor;

var R = lerp(color_get_red(originalBlockColor), color_get_red(c_black), 0.6);
var G = lerp(color_get_green(originalBlockColor), color_get_green(c_black), 0.6);
var B = lerp(color_get_blue(originalBlockColor), color_get_blue(c_black), 0.6);
sender.displayBlockColor = make_color_rgb(R,G,B);

var R = lerp(color_get_red(originalBarColor), color_get_red(c_black), 0.4);
var G = lerp(color_get_green(originalBarColor), color_get_green(c_black), 0.4);
var B = lerp(color_get_blue(originalBarColor), color_get_blue(c_black), 0.4);
sender.displayBarColor = make_color_rgb(R,G,B);
