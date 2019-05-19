/// @description initialize pilot/weapon setup

//initialize variables

#region PILOT AND WEAPON ENUMS
enum pilot {
	Misha,
	Raz,
	Henrik,
	Bunsen,
	Harriet,
	Siska,
	Boss
}
enum bullet_type {
	standard,
	pellet,
	bubble,
	rocket,
	wave,
	mine
}
enum bullet_modifier1 {
	none,
	pierce,
	split,
	bouncy
}
enum bullet_modifier2 {
	none,
	boomerang,
	sinewave,
	giga,
	mini,
	homing
}
enum bullet_modifier3 {
	none,
	speedup,
	slowdown,
	relative_v
}
enum pilot_bonus {
	none,
	repel,
	drill,
	invisible,
	nuke,
	boss_charge
}

#endregion

pilot = global.pilotselected;
pilot_bonus = 0;
gold = 10000;

//SHIP variables
	//ENERGY
max_energy = 900;
energy = 100;

base_en_regen = 10;
en_regen_multiplier = 0;

base_en_cost = 80;
en_cost_multiplier = 0;

overheat_threshold = ceil(max_energy/3);

	//SHIELD
max_shield = 10;
shield = 1;
sh_regen_multiplier = 0;
base_sh_regen = 1;
base_regen_tick_rate = room_speed;
regen_tick_rate_multiplier = 0;

	//ARMOR
max_armor = 10;
armor_multiplier = 0;
base_armor = 5;

	//WEAPON variables
base_reload_speed = 5;
reload_speed_multiplier = 0;

base_damage = 10;
damage_multiplier = 0;

base_bullet_speed = 5 
bullet_speed_multiplier = 0;

weapon_LV = 1;
bullet_type = bullet_type.bubble;
bullet_modifier1 = bullet_modifier1.none;
bullet_modifier2 = bullet_modifier2.none;
bullet_modifier3 = bullet_modifier3.speedup;
pilot_bonus = pilot_bonus.none;
shop_multiplier = 0;