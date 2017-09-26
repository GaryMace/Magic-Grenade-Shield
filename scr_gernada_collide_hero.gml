var prob = irandom_range(0, 100);

var damage = 0; //do damage on a probability basis
if (prob < 10)
    damage = 30;
else if (prob >= 10 and prob < 25) 
    damage = 20;
else
    damage = 10;

other.heroHealth -= damage; //deal damage to hero
instance_destroy();