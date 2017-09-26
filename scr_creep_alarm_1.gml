var prob = irandom_range(0, 100);
var berzerkChance;

switch (global.difficulty) {
     case 0:
        berzerkChance = 35;
        break;
     case 1:
        berzerkChance = 60;
        break;
     case 2:
        berzerkChance = 80;
        break;
}

if (prob < berzerkChance && instance_exists(obj_hero)) {
    sprite_index = spr_berzerk;
    isBerzerk = true;

    audio_play_sound(snd_berzerk, 50, false);

    if (x < room_width / 2) {
        offset = -90;
    } else {
        offset = 90;
    }
    direction = point_direction(x, y, obj_hero.x, obj_hero.y) + offset;
}