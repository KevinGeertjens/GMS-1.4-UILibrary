///scr_event_moveComboboxListDown(id)
var sender = argument0;
sender.displayIndex = clamp(sender.displayIndex+1, 0, max(ds_list_size(sender.items) - sender.itemCapacity, 0));

with(sender)
{
    event_user(0);
}
