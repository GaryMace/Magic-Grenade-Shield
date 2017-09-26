if (audio_is_playing(snd_gameover_music))
    audio_stop_sound(snd_gameover_music);
else if (audio_is_playing(snd_playmusic))
    audio_stop_sound(snd_playmusic);

var eff;

eff = instance_create(0, 0, effFadeToBlack);
eff.newRoom = rm_menu;
