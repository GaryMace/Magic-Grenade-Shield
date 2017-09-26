if (gateHealth <= 0 ) { //If gate has no health left, game over
    if (audio_is_playing(snd_berzerk)) {    //Creep might be in bererk mode, turn off sound
        audio_stop_sound(snd_berzerk);
    }
    
    audio_stop_sound(snd_playmusic);
    audio_play_sound(snd_destroygate, 100, false);
    instance_destroy();

    var eff;    //fade to black and fade into game over screen
    eff = instance_create(0, 0, effFadeToBlack);
    eff.newRoom = rm_gameover;
}