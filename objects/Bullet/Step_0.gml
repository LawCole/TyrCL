/// @description Insert description here
// You can write your code in this editor

y -= 10;

bullet_linger -=1;

var checkOOB = is_out_of_bounds(self);
if bullet_linger <= 0 {
	instance_destroy(self);
}

if checkOOB == true {
	instance_destroy(self);
}