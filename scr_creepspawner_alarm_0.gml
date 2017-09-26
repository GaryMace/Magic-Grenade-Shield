//make sure the hero exists before spawning so it doesn't crash when
//the creep tries to move towards them
if (creepsOnMap < maxCreeps && instance_exists(obj_hero)) {
    instance_create(irandom_range(0, room_width), irandom_range(0, 150), obj_creep);
    alarm[0] = irandom_range(spawnLB, spawnUB); //reset the spawn counter
    creepsOnMap++;
}
