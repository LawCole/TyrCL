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
	wave
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
	slowdown
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

pilot = 2;
pilot_bonus = 0;
gold = 10000;

//SHIP variables
max_energy = 900;
energy = 100;
en_regen_multiplier = 0;
en_regen = 10 * (1 + en_regen_multiplier/100);
en_cost_multiplier = 0;
en_cost = 80 * (1 + en_cost_multiplier/100);

max_shield = 40;
shield = max_shield/2;
sh_regen_multiplier = 0;
sh_regen = 20 * (1 + sh_regen_multiplier/100);

max_armor = 100;
armor_multiplier = 0;
armor = 60 * (1 + armor_multiplier/100);

//WEAPON variables
reload_speed = 5;
bullet_damage = 10;
weapon_LV = 1;
bullet_type = bullet_type.standard;
bullet_modifier1 = bullet_modifier1.none;
bullet_modifier2 = bullet_modifier2.none;
bullet_modifier3 = bullet_modifier3.none;
pilot_bonus = pilot_bonus.none;