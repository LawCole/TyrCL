var spread = 180/10;

for (var i = 0; i < weapon_LV; ++i) {spawn_bullet(90 +spread*i);}
for (var i = 1; i < weapon_LV; ++i) {spawn_bullet(90 -spread*i);}
