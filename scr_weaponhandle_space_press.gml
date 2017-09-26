if (!global.weapOnCooldown) {   

    switch(global.difficulty) {
        case 0: //easy
            global.weapOnCooldown = true;
            alarm[0] = 25;
            break;
        case 1: //hard 
            global.weapOnCooldown = true;
            alarm[0] = 25;  //put weapon on cooldown for 25 ticks
            break;
        case 2: //bonkers
            global.weapOnCooldown = false;  //no cooldown on this mode
            break;
    }
    instance_create(525, 600, obj_weapon);  //spawn weapon behind hero
}