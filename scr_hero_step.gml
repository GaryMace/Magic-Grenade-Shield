if (heroHealth <= 0) {  //if hero dead, i.e. game over
    if (audio_is_playing(snd_berzerk)) {    //A creep might be in process of going berzerk
        audio_stop_sound(snd_berzerk);
    }
    
    audio_stop_sound(snd_playmusic);  
    audio_play_sound(snd_gameover, 25, false);
    instance_destroy();
    
    var eff;    //fades screen to black and fades into new room screen
    eff = instance_create(0, 0, effFadeToBlack);
    eff.newRoom = rm_gameover;
}