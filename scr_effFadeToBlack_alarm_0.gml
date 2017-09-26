alarm[0] = fadeSpeed;
fadeAlpha += 0.1;

if ( fadeAlpha >= 1.0 ) {   //once the fade is dark enough move to the new room and delete fade
    room_goto(newRoom);
    instance_destroy();
}