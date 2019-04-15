/// @description set up player variables

//MOVEMENT VARIALBES
spd = 5;
acc = 0.5;
fric = 0.25;
hspd = 0;
vspd = 0;
//grav = 0.8;
//bounce = false;

//SPRITE VARIABLES
image_xscale = image_xscale*2;
image_yscale = image_yscale*2;
image_index = 2;
image_speed = 0;

//SHIP-PILOT ATTRIBUTES
pilot = "Raz";
reload_speed = 5;

bullet_damage = 10;

max_energy = 900;
energy = 100;
en_regen = 10;
en_cost = 80;
max_shield = 40;
shield = max_shield/2;
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