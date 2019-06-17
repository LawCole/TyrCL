// EVENTUALLY REPLACE WITH SHOP

switch(argument0){
	case 0: global.bullettype = bullet_type.standard; break;
	case 1: global.bullettype = bullet_type.pellet; break;
	case 2: global.bullettype = bullet_type.bubble; break;
	case 3: global.bullettype = bullet_type.wave; break;
	default: global.bullettype = bullet_type.standard; break;
}

