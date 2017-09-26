obj_creepspawner.creepsOnMap--;

score += creepHealth;   //whatever remaining creep health is, add it to hero score
instance_destroy();
audio_stop_sound(snd_berzerk);      //kill the creep
audio_play_sound(snd_creepdeath, 25, false);