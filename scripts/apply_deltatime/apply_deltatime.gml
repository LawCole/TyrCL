//apply delta time to a variable

time_var = argument0;

var seconds_passed = delta_time/1000000;
var move_speed_this_frame = time_var*seconds_passed;

return(move_speed_this_frame);