move_towards_point(obj_hero.x, obj_hero.y, 4);
sprite_index = spr_berzerk;     //Spawn a new creep with the berzerk animation. i.e. fly into screen

isBerzerk = false;  //can't spawn in berzerk mode
isWalking = false;  //can't spawn in walking mode
    
var berzerkLB;  //LB = lowerbound, UB = upperbound
var berzerkUB;

switch (global.difficulty) {
    case 0: //easy
        creepHealth = 1;
        shootLB = 250;
        shootUB = 750;
        berzerkLB = 250;
        berzerkUB = 1000;
        berzerkSpeed = .25; //how fast the creep moves towards hero when in berzerk mode
        break;
    case 1: //hard
        creepHealth = 20;
        shootLB = 250;
        shootUB = 425;
        berzerkLB = 325;
        berzerkUB = 700;
        berzerkSpeed = 0.5;
        break;
    case 2: //bonkers
        creepHealth = 45;
        shootLB = 100;
        shootUB = 200;
        berzerkLB = 300;
        berzerkUB = 525;
        berzerkSpeed = 0.8;
        break;
}
alarm[0] = irandom_range(shootLB, shootUB);     // Shoot in this time interval
alarm[1] = irandom_range(berzerkLB, berzerkUB); // Go berzerk in this time interval
justSpawned = true; 
cx = x;
cy = y;

dir = 1;    // 1 for right, 0 for left
pivot = 0;