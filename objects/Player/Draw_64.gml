/// @description DEBUG
draw_text(10,10,"Bullet count: " + string(global.bulletcount));
//draw_text(10,30,"ENERGY:" + string(ceil(energy)));
//draw_text(10,50,"SHIELD:" + string(shield));
//draw_text(10,70,"ARMOR:" + string(armor));
draw_healthbar(10,30,110,40,energy_PC,c_black,c_yellow,c_orange,0,true,false);
draw_healthbar(10,40,110,50,shield_PC,c_black,c_teal,c_blue,0,true,false);
draw_healthbar(10,50,110,60,armor_PC,c_black,c_maroon,c_silver,0,true,false);
draw_text(10,90,"hspd:" + string(hspd));
draw_text(10,110,"vspd:" + string(vspd));