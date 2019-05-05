// spawn_bullet(angle)
angle = argument0;

var bullet_spawn = instance_create_layer(x,y,"Instances",Bullet);
	bullet_spawn.bullet_angle = angle;
	bullet_spawn.bullet_damage = bullet_damage;