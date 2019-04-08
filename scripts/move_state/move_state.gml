///move_state()

if (right || left) {
    hspd += (right - left)*acc;
    hspd_dir = right - left;
    
    if (hspd > spd) hspd = spd;
    if (hspd < -spd) hspd = -spd;
} 

if (up || down) {
	vspd -= (up - down)*acc;
    vspd_dir = up - down;
    
    if (vspd > spd) vspd = spd;
    if (vspd < -spd) vspd = -spd;
} 

if up == false && down == false && right = false && left == false { apply_friction(fric); }

 if (hspd != 0) { image_xscale = sign(hspd); }
 if (vspd != 0) { image_yscale = sign(vspd); }


move(Solid);