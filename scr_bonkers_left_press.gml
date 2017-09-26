global.difficulty = 2;  //bonkers

audio_stop_sound(snd_menumusic);
var eff;
eff = instance_create(0, 0, effFadeToBlack);
eff.newRoom = rm_play;