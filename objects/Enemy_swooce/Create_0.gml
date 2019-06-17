/// @description Insert description here
// You can write your code in this editor

path_start(p_swooce, 1.2, path_action_reverse,false);

base_shot_timer = 60;
shot_timer = base_shot_timer;
enemy_hp = 40;
enemy_hp_max = enemy_hp;
bullet_damage = 2;
credit_worth = 100;

//TEMPORARY SPRITE SCALING
image_xscale = image_xscale *1;
image_yscale = image_yscale *1;

//flash shader variables
flashAlpha = 0;
flashColor = c_white;