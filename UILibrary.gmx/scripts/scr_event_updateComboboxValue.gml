///scr_event_updateComboboxValue(id)
var sender = argument0;

sender.parentCombobox.selectedIndex = sender.listIndex;
sender.parentCombobox.text = sender.parentCombobox.displayItems[| sender.listIndex].text;

scr_event_toggleDropdownBox(sender.parentCombobox);


