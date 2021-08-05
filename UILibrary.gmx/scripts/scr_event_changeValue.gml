///scr_event_changeValue(id);
var sender = argument0;

var scale = obj_master_UI.scale;
var X = sender.x * scale;
var scaledWidth = sender.width * scale;

var totalRange = scaledWidth;
var progression = sender.mouseX - X;
var percentage = progression / totalRange;

var senderTotalRange = sender.maxValue - sender.minValue;
sender.value = clamp(senderTotalRange * percentage + sender.minValue, sender.minValue, sender.maxValue);
