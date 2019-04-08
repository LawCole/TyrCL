/// @description Insert description here
// You can write your code in this editor

var anim_spd = 0.05;

if hspd> 0 { if image_index < 4 {image_index += anim_spd;} }
if hspd< 0 { if image_index > 0 {image_index -= anim_spd;} }
if hspd= 0 { image_index = 2; }



draw_self();