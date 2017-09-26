var prob = irandom_range(0, 100);
var damage = 0;

if (prob < 20)  //Do damage on a probability basis
    damage = 30;
else if (prob >= 20 and prob < 35) 
    damage = 20;
else
    damage = 10;

other.gateHealth -= damage; //deal damage to gate
audio_play_sound(snd_gatehit, 100, false);
instance_destroy();