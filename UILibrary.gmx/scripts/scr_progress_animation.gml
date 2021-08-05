///scr_progress_animation(id, framerate)
var sender = argument0;
var framerate = argument1; //frames per second

sender.image_index += framerate * obj_deltatime.delta;
