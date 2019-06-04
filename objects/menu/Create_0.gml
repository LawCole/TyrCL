global.pause = true;
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_height(view_camera[0]);

global.key_revert = ord("X");
global.key_enter = vk_enter;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_up = vk_up;
global.key_down = vk_down;

display_set_gui_size(global.view_width,global.view_height);

enum menu_page {
	main,
	load_game,
	settings,
	audio,
	pilot_page,
	controls,
	height
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

//CREATE MENU PAGES
ds_menu_main = create_menu_page(
	["NEW GAME",	menu_element_type.page_transfer,	menu_page.pilot_page],
	["LOAD GAME",	menu_element_type.page_transfer,	menu_page.load_game],
	["SETTINGS",	menu_element_type.page_transfer,	menu_page.settings],
	["EXIT",		menu_element_type.script_runner,	exit_game],	
);

ds_load_game = create_menu_page(
	["BACK",		menu_element_type.page_transfer,	menu_page.main],
)

ds_settings = create_menu_page(
	["CONTROLS",	menu_element_type.page_transfer,	menu_page.controls],
	["AUDIO",		menu_element_type.page_transfer,	menu_page.audio],
	["WINDOW MODE",	menu_element_type.toggle,			change_window_mode,	1,		["FULLSCREEN", "WINDOWED"]],
	["BACK",		menu_element_type.page_transfer,	menu_page.main],
)

ds_menu_audio = create_menu_page(
	["MASTER",		menu_element_type.slider,			change_volume,		1,	[0,1]],
	["SOUND FX",	menu_element_type.slider,			change_volume,		1,	[0,1]],
	["MUSICS",		menu_element_type.slider,			change_volume,		1,	[0,1]],
	["BACK",		menu_element_type.page_transfer,	menu_page.settings],
)

ds_pilot_page = create_menu_page(
	["CHOOSE YOUR PILOT:",	menu_element_type.shift,	change_pilot,	0,	["Misha","Raz","Henrik","Bunsen","Siska","Harriet","???"]],
	["PLAY",				menu_element_type.script_runner,	start_game],
	["BACK",				menu_element_type.page_transfer,	menu_page.main],
)

ds_menu_controls = create_menu_page(
	["UP",					menu_element_type.input,			"key_up",	vk_up],
	["BACK",				menu_element_type.page_transfer,	menu_page.main],
)

page = 0;
menu_pages = [ds_menu_main, ds_load_game, ds_settings, ds_menu_audio, ds_pilot_page, ds_menu_controls];
var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len){
	menu_option[i] = 0;
	i++;
}

inputting = false;

//move to a persistent controller object
audio_group_load(audiogroup_music);
audio_group_load(audiogroup_soundeffects);