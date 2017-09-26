heroHealth -= 30;   //hero hit by creep, make it a constant damage regardless of difficulty

audio_play_sound(snd_hitbycreep, 50, false);
sprite_index = spr_hero_hit;
alarm[0] = 15;  //stop playing hero damaged animation after 15 ticks