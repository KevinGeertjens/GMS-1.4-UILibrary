///scr_event_reloadText(id)

var sender = argument0;
if(sender.object_index == obj_UI_checkbox)
{
    sender.displayText = scr_string_trim(sender.text, sender.font, sender.width - sender.boxWidth - 2);
}
else sender.displayText = scr_string_trim(sender.text, sender.font, sender.width - 10);
