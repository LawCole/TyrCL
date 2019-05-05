///@description control the player's state
get_input();
script_execute(state);

//CALCULATE % to draw bars
armor_PC = (armor/max_armor)*100 ;
shield_PC = (shield/max_shield)*100;
energy_PC = (energy/max_energy)*100;

//ATTACK
weapon_LV = clamp(weapon_LV,1,11);
//disable attack if player is dead
if (z_key) || (left_mouse) && (state != death_state) { 
	attack_key = true; 
	} else { attack_key = false;}

if (attack_key) && (attackstate == 0) && (energy >= en_cost) {
	fire_weapon()
	//spread_angle = 90/(weapon_LV);
	//for (var i = 1; i < weapon_LV+1; i++)
	//	{
	//	var angle = i*spread_angle;
	//	var bullet_spawn = instance_create_layer(x,y,"Instances",Bullet);
	//	bullet_spawn.bullet_angle = angle;
	//	bullet_spawn.bullet_damage = bullet_damage;
	//	}
	attackstate = 60;
	energy -= en_cost;
	}

//firing cooldown	
if (attackstate !=0) {
 attackstate -= reload_speed;
 if attackstate <0 {attackstate = 0;}
}

//ENERGY REGEN STUFF

regen_tick_rate -=1;
if regen_tick_rate <= 0 {
	if shield < max_shield { 
		if energy >= sh_regen{
			shield += sh_regen; 
		} else { 
			shield += energy;
			}
	shield = clamp(shield,0,max_shield);
	energy -= sh_regen;
	}
regen_tick_rate = room_speed;
}

if energy < max_energy {
	energy += en_regen;
	energy = clamp(energy,0,max_energy);
}

//DAMAGE STUFF
if damage_buffer > 0 {
	if shield > 0 { 
		shield -= damage_buffer;
		} else {
		armor -= damage_buffer;
		}
	if shield < 0 {
	armor += shield;
	shield = 0;
	}
	damage_buffer = 0;
}

if armor <= 0 { 
	//DEATH
	state = death_state;
	
	}

//SPRITE STUFF (for now)
calculate_speed();

//ZOOM VIEW (maybe move later)
//var zoom_speed = .1;
//view_zoom += keyboard_check(vk_up)*zoom_speed;
//view_zoom -= keyboard_check(vk_down)*zoom_speed;
//view_zoom = clamp(view_zoom,1,view_max_zoom);

//view_wview = obj_display_manager.ideal_width/view_zoom;
//viw_hview = obj_display_manager.ideal_height/view_zoom;