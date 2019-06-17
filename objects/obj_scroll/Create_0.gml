/// @description Insert description here
// You can write your code in this editor

scroll_spd_internal = 1;
global.scroll_speed = scroll_spd_internal;

scroll_state = scroll_state.init;

startup_delay = 5;

y = room_height-(camera_get_view_height(view_camera[0])/2);
