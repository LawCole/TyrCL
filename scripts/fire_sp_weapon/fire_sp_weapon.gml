switch (pilot_bonus) {
    case pilot_bonus.none:
        // NOTHING LOL
        break;
    case pilot_bonus.repel:
        if shield >= max_shield/2 {
			shield -= max_shield/2;
			EnemyBullet.bullet_spd -= EnemyBullet.bullet_spd;
		}
        break;
    default:
        // code here
        break;
}