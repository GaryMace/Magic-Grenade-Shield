centerX = 480;  //variables associated with shield centre of rotation
centerY = 608;
radius = 50;

switch (global.difficulty) {
    case 0:
    case 1:
        rotateSpeed = 3;    //same speed for hard and easy
        break;
    case 2:
        rotateSpeed = 5;    //gets too hard, make it a bit easier by increasing rotatespeed
        break;
}