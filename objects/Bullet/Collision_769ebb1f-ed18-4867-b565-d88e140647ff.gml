/// @description COLLISION WITH ENEMY

switch (Player.bullet_modifier1) {
	case bullet_modifier1.pierce:
		if rehit_cooldown <= 0 {
		other.enemy_hp -= bullet_damage;
		rehit_cooldown = room_speed/10;
		}
	rehit_cooldown -= 1;
	break;
	
	case bullet_modifier1.split:
	other.enemy_hp -= bullet_damage;
		for (var i = 1; i < 5; ++i) {
		  var bullet_spawn = instance_create_layer(x,y,"Instances",Sub_bullet);
			bullet_spawn.sprite_index = sprite_index;
			bullet_spawn.bullet_angle = bullet_angle + (irandom_range(15,75) + 90*i);
			bullet_spawn.bullet_damage = bullet_damage/4; 
			bullet_spawn.bullet_speed = bullet_speed*0.5;
			bullet_spawn.image_xscale = image_xscale/2;
			bullet_spawn.image_yscale = image_yscale/2;
		}
		instance_destroy(self);
	break;
	
	default:
		other.enemy_hp -= bullet_damage;
		instance_destroy(self);
	break;
}
