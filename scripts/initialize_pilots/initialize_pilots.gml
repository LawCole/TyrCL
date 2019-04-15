switch (pilot)
	{
	case Misha:
		en_cost_multiplier = -10;
		break;
	case Raz:
		sh_regen_multiplier = 5;
		//TODO: sh_regen_efficiency = 5;
		break;
	case Henrik:
		armor_multiplier = -25;
		sh_regen_multiplier = 25;
		pilot_bonus = pilot_bonus.repel;
		break;
	case Bunsen:
		//WEAPON_LV +1
		shop_multiplier = -50;
		sh_regen_multiplier = -100;
		pilot_bonus = pilot_bonus.drill;
		break;
	case Harriet:
		shop_multiplier = -50;
		en_cost_multiplier = -50;
		sh_regen_multiplier = -100;
		pilot_bonus = pilot_bonus.nuke;
		break;
	case Siska:
		pilot_bonus = pilot_bonus.invisible;
		break;
	case Boss:
		en_cost_multiplier = -25;
		sh_regen_multiplier = 25;
		armor_multiplier = 25;
		pilot_bonus = pilot_bonus.boss_charge;
		break;
	default: break;
	}