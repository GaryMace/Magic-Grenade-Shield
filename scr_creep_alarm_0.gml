//don't allow shooting in berzerk mode and dont go berzerk if hero has already died
if (!isBerzerk && instance_exists(obj_hero)) {  
    instance_create(self.x, self.y, obj_gernada);   
    audio_play_sound(snd_shoot, 10, false);
    alarm[0] = irandom_range(shootLB, shootUB); // Reset the shoot parameter
    sprite_index = 3;                           // Creep shooting sprite
}
