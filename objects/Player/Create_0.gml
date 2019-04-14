/// @description set up player variables

//MOVEMENT VARIALBES
spd = 5;
acc = 0.5;
fric = 0.25;
hspd = 0;
vspd = 0;
//grav = 0.8;
bounce = false;

//SPRITE VARIABLES
image_xscale = image_xscale*2;
image_yscale = image_yscale*2;
image_index = 2;
image_speed = 0;

//SHIP ATTRIBUTES
reload_speed = 5;

max_energy = 100;
energy = 100;
en_regen = 1.25;
en_cost = 20;
max_shield = 40;
shield = 40;
sh_regen = 20;
max_armor = 100;
armor = 60;


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