

prob = irandom_range(0, 100);  
    
if (prob <= 10)     //Spawn gernada fragments on a probability basis
    numFragments = 3;
else if (prob > 10 && prob <= 25) 
    numFragments = 2;
else 
    numFragments = 1;
    
for (i = 0; i < numFragments; i++) 
    instance_create(self.x, self.y, obj_fragment);
    
audio_play_sound(snd_shieldhit, 25, false);
instance_destroy();