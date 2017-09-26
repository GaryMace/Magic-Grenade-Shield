if (instance_exists(obj_hero)) {
    draw_healthbar(160, 640, 288, 660, obj_hero.heroHealth, c_black, c_red, c_lime, 0, true, true);
    draw_sprite(spr_hero_health, 0, 139, 622);
}
