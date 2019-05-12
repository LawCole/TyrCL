/// @description DEBUG
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(10,10,"Bullet count: " + string(global.bulletcount));
draw_healthbar(10,30,110,40,energy_PC,c_black,c_yellow,c_orange,0,true,false);
draw_healthbar(10,45,110,55,shield_PC,c_black,c_teal,c_blue,0,true,false);
draw_healthbar(10,60,110,70,armor_PC,c_black,c_maroon,c_silver,0,true,false);
draw_text(10,75,"FPS:" + string(fps));
draw_text(10,95,"FPS_real:" + string(fps_real));
draw_text(10,115,"weapon LV:" + string(weapon_LV));
draw_text(10,135,"CREDIT$: " + string(gold));

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
draw_text(10,155,"Pilot: " + string(pilotname));