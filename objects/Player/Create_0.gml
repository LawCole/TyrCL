/// @description set up player variables

//MOVEMENT VARIALBES
max_speed = 15;
spd = 5;
acc = 0.5;
fric = 0.25;
hspd = 0;
vspd = 0;

//SPRITE VARIABLES
image_index = 2;
image_speed = 0;

//SHIP-PILOT ATTRIBUTES
//SET UP ALL THE NECESSARY VARIABLES
initialize_weapons_pilots();
//INITIALIZE PILOT MODIFIERS
initialize_pilots_attributes();
//INITIALIZE WEAPON MODIFIERS
initialize_weapon_attibutes();

//RECALCULATE ATTRIBUTES AFTER LOADING PILOT ATTRIBUTES 
bullet_damage = ceil(base_damage * (1 + damage_multiplier/100));
reload_speed = round(base_reload_speed * (1 + reload_speed_multiplier/100));
bullet_speed = round(base_bullet_speed * (1 + bullet_speed_multiplier/100));
en_regen = round(base_en_regen * (1 + en_regen_multiplier/100));
en_cost = ceil(base_en_cost * (1 + en_cost_multiplier/100));
sh_regen = round(base_sh_regen * (1 + sh_regen_multiplier/100));
armor = ceil(base_armor * (1 + armor_multiplier/100));

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