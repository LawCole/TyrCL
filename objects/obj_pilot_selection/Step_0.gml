/// @description temp

get_input();

menuinputcooldown -=1;

if menuinputcooldown <= 0 && enter == true {
	global.pilotselected = selected_value;
	//room_goto(room0);
	room_goto(rm_leveltest);
}