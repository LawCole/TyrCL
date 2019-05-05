/// @description MOVE PROJECTILE

//move particle in set direction
x += lengthdir_x(bullet_speed,bullet_angle);
y += lengthdir_y(bullet_speed,bullet_angle);

//OPTIMIZATION IDEA: maybe doesn't need to check OOB every step

var checkOOB = is_out_of_bounds(self);

if checkOOB == true {
	instance_destroy(self);
}