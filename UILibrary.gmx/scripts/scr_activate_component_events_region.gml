///scr_activate_component_events_region(x1, y1, x2, y2, depth)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var targetDepth = argument4;

with(obj_UI_control)
{
    var rectInRect = rectangle_in_rectangle(x, y, x+width, y+height, x1, y1, x2, y2);
    if(rectInRect == 1 || rectInRect == 2 && depth >= targetDepth)
    {
        performEvents = true;
    }
}


