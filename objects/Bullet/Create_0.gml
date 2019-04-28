/// @description Insert description here
// You can write your code in this editor

bullet_damage = 10;
bullet_speed = 5;
bullet_linger = 90;

image_xscale = image_xscale*0.5;
image_yscale = image_yscale*0.5;

if global.bulletcount = undefined {
 global.bulletcount = 0;
};

global.bulletcount +=1;