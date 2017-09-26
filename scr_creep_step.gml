if (creepHealth <= 0) { //If creep is dead
    audio_play_sound(snd_creepdeath, 25, false);
    obj_creepspawner.creepsOnMap--;
    instance_destroy();
} else if (instance_exists(obj_hero)) { //Don't move towards hero object if it doesn't exist, ie he's dead
    //move until 325 pixels from player, this simulates a semicircle
    if (justSpawned && distance_to_object(obj_hero) <= 325) {   
        speed = 0;
        justSpawned = false;
        cx = x;
        cy = y;
        sprite_index = spr_berzerk;
    }
    if (!justSpawned && !isWalking && !isBerzerk) { //starts a creep walking animation
            speed = 100; 
            isWalking = true;
            sprite_index = spr_walk;
            image_speed = .1;
        
            //pivot backwards and forwards from the initial x pos of the sprite
            if (dir == 1) { 
                pivot = cx + 20;
                dir = 0;
            } else if (dir == 0) {
                dir = 1;
                pivot = cx - 20;
            }
            move_towards_point(pivot, y, 1);
    }
    // Stop walking in pivot direction and prepare to switch to pivoting the other way
    if ( isWalking && distance_to_point(pivot, y) > 10 && !isBerzerk)
        isWalking = false;

    //Charge the player, this simulates a curved path to player
    if (isBerzerk) {
        direction = point_direction(x, y, obj_hero.x, obj_hero.y) + offset;
        if (offset != 0) {
            if (offset < 0) 
                offset++;
            else 
                offset--;
        }
    
        speed += berzerkSpeed;  //this var is defined in creep create
    }
}
