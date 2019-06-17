/// @description DEBUG
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(ft_debug);

draw_text(10,10,"Bullet count: " + string(global.bulletcount));
draw_healthbar(10,20,110,30,energy_PC,c_black,c_yellow,c_orange,0,true,false);
draw_healthbar(10,35,110,45,shield_PC,c_black,c_teal,c_blue,0,true,false);
draw_healthbar(10,50,110,60,armor_PC,c_black,c_maroon,c_silver,0,true,false);
draw_text(10,65,"FPS:" + string(fps));
draw_text(10,75,"weapon LV:" + string(weapon_LV));
draw_text(10,85,"CREDIT$: " + string(gold));

switch (pilot) {
    case pilot.Misha:
        pilotname = "Misha";
        break;
	case pilot.Raz:
        pilotname = "Raz";
        break;
	case pilot.Henrik:
        pilotname = "Henrik";
        break;
	case pilot.Bunsen:
        pilotname = "Bunsen";
        break;
	case pilot.Siska:
        pilotname = "Siska";
        break;
	case pilot.Harriet:
        pilotname = "Harriet";
        break;
	case pilot.Boss:
        pilotname = "???";
        break;
    default:
        pilotname = "Something went wrong";
        break;
}
draw_text(10,95,"Pilot: " + string(pilotname));
draw_text(10,105,"sh_regen_tick: "+ string(regen_rate));
if instance_exists(obj_camera){
	draw_text(10,115,"camera_y: "+ string(camera_get_view_y(view)));
}