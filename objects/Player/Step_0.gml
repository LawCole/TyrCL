///@description control the player's state
get_input();
script_execute(state);

//CALCULATE % to draw bars
armor_PC = (armor/max_armor)*100 ;
shield_PC = (shield/max_shield)*100;
energy_PC = (energy/max_energy)*100;

//attack

if (z_key) || (left_mouse) && (state != death_state) { 
	attack_key = true; 
	} else { attack_key = false;}

if (attack_key) && (attackstate == 0) && (energy >= en_cost) {
	var shot_spawned = instance_create_layer(x,y,"Instances",Bullet);
	shot_spawned.bullet_damage = bullet_damage;
	attackstate = 60;
	energy -= en_cost;
	}
	
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
