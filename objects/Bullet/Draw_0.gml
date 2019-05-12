/// @description draw bullet sprite

image_angle = bullet_angle - 90;

draw_self();

//flash
if (flashAlpha >0){
	shader_set(sh_flash);
	
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,
					flashColor,flashAlpha);
	shader_reset();
}


//DEBUG SHOW DAMAGE
draw_text(x+10,y, string(bullet_damage));