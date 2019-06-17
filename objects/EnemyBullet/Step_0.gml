/// @description Insert description here
// You can write your code in this editor

//MOVE BULLET

x += lengthdir_x(bullet_spd,mb_direction);
y += lengthdir_y(bullet_spd,mb_direction);
y -= global.scroll_speed;
//CHECK FOR COLLISION WITH PLAYER OR OUT OF BOUNDS

var checkOOB = is_out_of_bounds(self,32);
//var player_collision = collision_point(Player.x,Player.y,Player,false,false);

if checkOOB == true {
	instance_destroy(self);
}

//if player_collision == true {
//	instance_destroy(self);
//	Player.damage_buffer += bullet_damage;
//}