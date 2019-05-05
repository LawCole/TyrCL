/// @description Insert description here
// You can write your code in this editor

var anim_spd = 0.05;

if hspd > 0 { if image_index < 4 {image_index += anim_spd;} }
if hspd < 0 { if image_index > 0 {image_index -= anim_spd;} }
if hspd == 0 { image_index = 2; }

if damage_buffer>0 {draw_sprite(spr_shield_effect,0,Player.x,Player.y-(Player.sprite_height/2))}

draw_self();