/// @description set up player variables

//MOVEMENT VARIALBES
spd = 5;
acc = 0.5;
fric = 0.25;
hspd = 0;
vspd = 0;

//SPRITE VARIABLES
image_index = 2;
image_speed = 0;

//SHIP-PILOT ATTRIBUTES
initialize_weapons_pilots();
initialize_pilots_attributes();
//pilot = "Raz";
//reload_speed = 5;

//weapon_LV = 1;
//bullet_damage = 10;

//max_energy = 900;
//energy = 100;
//en_regen = 5;
//en_cost = 80;
//max_shield = 40;
//shield = max_shield/2;
//sh_regen = 20;
//max_armor = 100;
//armor = 60;

//ARMOR SYSTEM VARIABLES
damage_buffer = 0;
regen_tick_rate = room_speed;

//Player states
state =  move_mouse;
attackstate = 0;

//get the input
get_input();

//DEBUG
global.bulletcount = 0;

//CAMERA STUFF (maybe move to own object eventually)

//view_zoom = 1;
//view_max_zoom = 10;