/// @description Insert description here
// You can write your code in this editor

shot_timer -=1;
clamp(shot_timer, 0, 999);

if shot_timer <= 0 { 
	var bullet_ID = instance_create_layer(x,y,"Instances",EnemyBullet);
	bullet_ID.bullet_damage = bullet_damage;
	shot_timer = 90;
	}
	
if enemy_hp <= 0 {
	TEMP_respawn.respawn_timer = room_speed*2;
	instance_destroy(self);
	Player.gold += credit_worth;
}

if instance_exists(self) {
var checkOOB = is_out_of_bounds(self);
if checkOOB == true {instance_destroy(self);}
}

//DEBUG
//INCREASE OR DECREASE BULLET DAMAGE BY 20 WITH F1/F2
if keyboard_check_released(vk_f1) { bullet_damage += 20; }
if keyboard_check_released(vk_f2) { bullet_damage -= 20; }

//SHADER STUFF
if (flashAlpha > 0){
	flashAlpha -= 0.1;
}