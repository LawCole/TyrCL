///@description control the player's state
get_input();
script_execute(state);
y -= global.scroll_speed;

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

if (shift) || (middle_mouse) && (state != death_state) { 
	sp_attack_key = true; 
	} else { sp_attack_key = false;}

if (attack_key) && (attackstate == 0) && (energy >= en_cost) {
	fire_weapon()
	attackstate = 60;
	energy -= en_cost * (1 + weapon_LV/11);
	energy = clamp(energy,0,max_energy);
	}
	
if (sp_attack_key) {
	fire_sp_weapon()
	}

//firing cooldown	
if (attackstate !=0) {
 attackstate -= reload_speed;
 if attackstate <0 {attackstate = 0;}
}

//SHIELD REGEN
regen_rate -=1;
if regen_rate <= 0 {
	if shield < max_shield { 
		if energy >= sh_regen_cost{
			shield += sh_regen; 
			energy -= sh_regen_cost;
		} else { 
			//NOTHING
			}
	shield = clamp(shield,0,max_shield);
	energy = clamp(energy,0,max_energy)
	}
regen_rate = regen_tick_rate;
}

//ENERGY REGEN
if energy < max_energy {
	if energy >= overheat_threshold {
		energy += en_regen;
	} else {energy += en_regen/2;}
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
	//shield regen cooldown resets and takes longer when you get hit
	regen_rate = ceil(regen_tick_rate*1.5);
}

//pushback when colliding with enemy
	if !place_meeting(x,y,Enemy_FLY) {
		speed_push[0]=lerp(speed_push[0],0,.1);
		speed_push[1]=lerp(speed_push[1],0,.1);
	}

//mercy invincibility after colliding
if mercy > 0 {mercy -=1;}

if armor <= 0 {state = death_state;}

//SPRITE STUFF (for now)
calculate_speed();

//ZOOM VIEW (maybe move later)
//var zoom_speed = .1;
//view_zoom += keyboard_check(vk_up)*zoom_speed;
//view_zoom -= keyboard_check(vk_down)*zoom_speed;
//view_zoom = clamp(view_zoom,1,view_max_zoom);

//view_wview = obj_display_manager.ideal_width/view_zoom;
//viw_hview = obj_display_manager.ideal_height/view_zoom;