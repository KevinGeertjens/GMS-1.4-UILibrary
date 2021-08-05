///scr_event_toggleDropdownBox(id)
var sender = argument0;
sender.showDropdown = !sender.showDropdown;

//scr_event_drawComboboxItems(sender);
with(sender)
{
    event_user(0);
}
