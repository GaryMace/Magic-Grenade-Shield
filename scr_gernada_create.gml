targetX = irandom_range(430, 575);  //Range for gernada to hit
targetY = room_height;  //bottom of screen

//move at constant speed regardless of difficulty
move_towards_point(targetX, targetY, 8);    