///scr_showKeyboardCursor(id)
var sender = argument0;

if(!sender.oscillateCursor)
{
    sender.oscillateCursor = true;
    sender.showCursor = true;
    keyboard_string = "";
}
