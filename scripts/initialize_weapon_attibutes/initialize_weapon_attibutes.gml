switch (bullet_type)
	{
	case bullet_type.standard:
		bullet_sprite = spr_defaultbullet;
		break;
	case bullet_type.pellet:
		damage_multiplier -= 25;
		reload_speed_multiplier += 25;
		bullet_sprite = spr_pelletbullet;
		break;
	case bullet_type.bubble:
		reload_speed_multiplier -= 25;
		bullet_speed_multiplier -= 25;
		en_cost_multiplier += 25;
		bullet_sprite = spr_bubblebullet;
		break;
	case bullet_type.wave:
		damage_multiplier -= 20; 
		bullet_sprite = spr_wavebullet;
		break;
	default:
		bullet_sprite = spr_defaultbullet;
	break;
	}