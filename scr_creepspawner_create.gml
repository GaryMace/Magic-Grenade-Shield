maxCreeps = 15;
creepsOnMap = 3;    //always start with three creeps spawned
randomize();

for (i = 0; i < 3; i++) 
    instance_create(irandom_range(0, room_width), 0, obj_creep)


switch (global.difficulty) {
    case 0: //easy
        spawnLB = 450;
        spawnUB = 700;
        break;
    case 1: //hard
        spawnLB = 125;
        spawnUB = 275;
        break;
    case 2: //bonkers
        spawnLB = 60;
        spawnUB = 150;
        break;
}
alarm[0] = irandom_range(spawnLB, spawnUB); //spawn creeps in this range