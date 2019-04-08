/// @description RESPAWN ENEMY
var enemy_exists = instance_exists(Enemy);

respawn_timer -=1;

if (enemy_exists = false) && (respawn_timer <= 0) {
	instance_create_layer(spawn_x,spawn_y,"Instances", Enemy);
}