///move(collision_object)
var collision_object = argument0;

//horizontal collisions
if (place_meeting(x+hspd,y,collision_object)){
    while (!place_meeting(x+sign(hspd),y,collision_object)) {
        x += sign(hspd);
    }
    if (bounce == false) {
    hspd = 0;
    } else {
    hspd = -(hspd/2);
    }
}
x += hspd;
//vertical collisions
if (place_meeting(x,y+vspd,collision_object)){
    while (!place_meeting(x,y+sign(vspd),collision_object)) {
        y += sign(vspd);
    }
    vspd = 0;
}
y += vspd;
y -= global.scroll_speed;