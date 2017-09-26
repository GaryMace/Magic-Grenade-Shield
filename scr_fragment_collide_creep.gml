audio_play_sound(snd_creephit, 10, false);
var prob = irandom_range(0, 100);

var damage = 0; //do damage to creeps on probability basis
if (prob < 10)
    damage = 30;
else if (prob >= 10 and prob < 25) 
    damage = 20;
else
    damage = 10;

score += damage;
other.creepHealth -= damage; //deal damage to hero
instance_destroy();