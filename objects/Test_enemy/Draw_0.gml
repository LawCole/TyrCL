/// @description Insert description here
// You can write your code in this editor
var hp_pc = enemy_hp/enemy_hp_max*100;
draw_healthbar(x-sprite_width/2,(y-sprite_width/2)-5,x+sprite_width/2,y-sprite_width/2,hp_pc,c_black,c_yellow,c_orange,0,true,false);

draw_self();


//flash
if (flashAlpha >0){
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,
					flashColor,flashAlpha);
	shader_reset();
}
