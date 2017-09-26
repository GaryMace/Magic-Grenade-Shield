var eff;

audio_stop_sound(snd_gameover_music);
eff = instance_create(0, 0, effFadeToBlack);
eff.newRoom = rm_play;