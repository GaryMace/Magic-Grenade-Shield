global.difficulty = 0;  //easy
audio_stop_sound(snd_menumusic);    //stop menu music

//fade to black
var eff;
eff = instance_create(0, 0, effFadeToBlack);
eff.newRoom = rm_play;
