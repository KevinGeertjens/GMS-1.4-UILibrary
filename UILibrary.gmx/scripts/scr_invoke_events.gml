///scr_invoke_events(id, eventList)
var sender = argument0;
var eventList = argument1;

if(sender.performEvents)
{
    for(var i = 0; i < ds_list_size(eventList); i++)
    {
        var script = eventList[| i];
        script_execute(script, sender);
    }
}
