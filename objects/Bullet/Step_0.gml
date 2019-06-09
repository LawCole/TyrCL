/// @description MOVE PROJECTILE

//speedup n slowdown

switch (Player.bullet_modifier3) {
	case (bullet_modifier3.speedup) || (bullet_modifier3.slowdown):	
		bullet_damage += DmgIncrease;
		bullet_speed += bullet_accel;
		break;
	default:
		break;
}

bullet_damage = clamp(bullet_damage,bullet_min_damage,bullet_max_damage);
bullet_speed = clamp(bullet_speed,bullet_min_speed,bullet_max_speed);

//DEBUG ONLY: FLASH WHEN A CERTAIN VALUE IS REACHED
if bullet_speed >= bullet_max_speed { flashAlpha = 1;}

//move bullet in set direction
x += lengthdir_x(bullet_speed,bullet_angle);
y += lengthdir_y(bullet_speed,bullet_angle) ;
y -= global.scroll_speed;

//OPTIMIZATION IDEA: maybe doesn't need to check OOB every step

var checkOOB = is_out_of_bounds(self);

if checkOOB == true {
	instance_destroy(self);
}

//SHADER STUFF
if (flashAlpha > 0){
	flashAlpha -= 0.1;
}