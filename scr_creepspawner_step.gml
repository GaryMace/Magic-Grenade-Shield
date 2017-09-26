if (creepsOnMap == 0) { //No creeps left, level completed
    audio_stop_sound(snd_playmusic);
    audio_play_sound(snd_gameover, 25, false);
    
    var eff;
    eff = instance_create(0, 0, effFadeToBlack);
    eff.newRoom = rm_win;
}