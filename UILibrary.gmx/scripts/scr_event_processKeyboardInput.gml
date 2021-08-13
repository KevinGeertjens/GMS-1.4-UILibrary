///scr_event_processKeyboardInput(id)
var sender = argument0;
var stringLength = string_length(text);

if(keyboard_lastkey != -1)
{
    if(keyboard_lastkey == vk_backspace)
    {
        sender.text = string_delete(sender.text, stringLength, 1);
    }
    else
    {
        sender.text += keyboard_lastchar;
    }
    keyboard_lastkey = -1;
}
