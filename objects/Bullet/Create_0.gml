/// @description Insert description here
// You can write your code in this editor
sprite_index = Player.bullet_sprite;
bullet_damage = Player.bullet_damage;
bullet_max_damage = 999;
bullet_min_damage = 1;
bullet_speed = Player.bullet_speed;
bullet_max_speed = 999;
bullet_min_speed = 1;
bullet_accel = 0;

switch (Player.bullet_modifier3) {
	case bullet_modifier3.relative_v:
		//bullet_speed = Player.bullet_speed * (1 - sign(Player.vspd)* 30/100);
	break;
		case bullet_modifier3.speedup:
			bullet_max_damage = bullet_damage * 1.5;
			bullet_min_damage = bullet_damage * 0.75;
			bullet_max_speed = bullet_speed * 1.20;
			bullet_min_speed = bullet_speed * 0.20;
		bullet_speed = bullet_min_speed;
		bullet_accel = 0.03;
	break;
		case bullet_modifier3.slowdown:
			bullet_max_damage = bullet_damage * 1.5;
			bullet_min_damage = bullet_damage * 0.75;
			bullet_max_speed = bullet_speed * 1.20;
			bullet_min_speed = bullet_speed * 0.20;
		bullet_speed = bullet_max_speed;
		bullet_accel = -0.05;
	break;
	default: 
		bullet_speed = Player.bullet_speed;
		bullet_max_speed = bullet_speed;
	break;
}

DeltaDamage = bullet_max_damage - bullet_min_damage;
DeltaSpeed = bullet_max_speed - bullet_min_speed;
DmgIncrease = DeltaDamage * (abs(bullet_accel) / DeltaSpeed);

bullet_linger = 90;
bullet_angle = 90;
rehit_cooldown = 0;

if global.bulletcount = undefined {
	global.bulletcount = 0;
};

global.bulletcount +=1;

//flash shader variables
flashAlpha = 0;
flashColor = c_white;