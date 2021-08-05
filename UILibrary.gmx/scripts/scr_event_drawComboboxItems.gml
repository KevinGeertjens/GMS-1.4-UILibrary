///scr_event_drawComboboxItems(id)
var sender = argument0;

var scale = obj_master_UI.scale;
var X = sender.x * scale;
var Y = sender.y * scale;
var scaledWidth = round(sender.width * scale);
var scaledHeight = round(sender.height * scale);
var scaledDropdownHeight = sender.dropdownHeight * scale;
var scaledHeight = sender.height * scale;
var scaledBorderWidth = sender.borderWidth * scale;

for(var i = 0; i < ds_list_size(sender.displayItems); i++)
{
    with(sender.displayItems[| i])
    {
        instance_destroy();
    }
}
ds_list_clear(sender.displayItems);

if(showDropdown)
{
    for(var i = 0; i < ds_list_size(items); i++)
    {
        var item = sender.items[| i];
        var label = instance_create(sender.x, sender.y + sender.height, obj_UI_label);
        label.text = item;
        label.bgColor = sender.bgColor;
        label.font = sender.font;
        label.width = sender.width;
        label.height = sender.dropdownHeight / 4;
        label.depth = sender.depth - 1;
        ds_list_add(sender.displayItems, label);
        
        show_debug_message("Created label at X: " + string(X+scaledBorderWidth) + ", Y: " + string(Y));
        label.y += i*label.height;
    }
}
