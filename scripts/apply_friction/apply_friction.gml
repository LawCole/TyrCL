///apply_friction(amount)
var amount = argument[0];

if (hspd !=0) && (abs(hspd)-amount > 0) {
		hspd -= amount*image_xscale;
	} else {hspd = 0;}

if (vspd !=0) && (abs(vspd)-amount > 0) {
		vspd -= amount*image_yscale;
	} else {vspd = 0;}

//if (hspd !=0) { 
//	if fallstate = "grounded" { //ground friction
//	    if (abs(hspd)-amount > 0) {
//	        hspd -= amount*image_xscale;
//	    } else {hspd = 0;}
//	} else { //air friction
//		if (abs(hspd)-amount > 0) {
//	        hspd -= (amount*0.5)*image_xscale;
//	    } else {hspd = 0;}
//	}
//}