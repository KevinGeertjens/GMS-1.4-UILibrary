///scr_event_updateComboboxItems(id)
var sender = argument0;

for(var i = 0; i < ds_list_size(sender.displayItems); i++)
{
    var item = sender.displayItems[| i];
    item.text = sender.items[| i];
    item.width = sender.width - scrollbarWidth;
    item.height = (sender.dropdownHeight - 2*sender.itemOffset - sender.itemCapacity+1) / sender.itemCapacity;
    item.font = sender.font;
    item.bgColor = sender.bgColor;
    item.bgAlpha = 0;
    item.textColor = sender.textColor;
}

for(var i = 0; i < ds_list_size(sender.items); i++)
{
    if(is_undefined(ds_list_find_value(sender.displayItems, i)))
    {
        var item = items[| i];
        var label = instance_create(sender.x, sender.y + sender.height + sender.itemOffset, obj_UI_comboboxItem);
        label.text = item;
        label.bgColor = sender.bgColor;
        label.font = sender.font;
        label.width = sender.width - sender.scrollbarWidth;
        label.height = (sender.dropdownHeight - 2*sender.itemOffset - sender.itemCapacity+1) / sender.itemCapacity;
        label.depth = sender.depth + 1;
        label.textColor = sender.textColor;
        label.borderAlpha = 0;
        
        label.parentCombobox = sender;
        label.listIndex = i;
        
        ds_list_add(sender.displayItems, label);
            
        label.y += i*label.height;
        
        //sender.alarm[0] = 1;
        //show_debug_message("Added new item");
    }
}
