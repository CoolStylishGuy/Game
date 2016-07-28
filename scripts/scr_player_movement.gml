/* To use this script, place the movement initializer in the create event of the test object */

var mult = 1; //this is used to change the speed when tiptoe-ing is engaged.
//We may later want to use the mult function for speed-changing surfaces or status ailments



if keyboard_check(ord(tipbutton)) //checks to see if tiptoe button is being pressed
    {
    tiptoe = 1; //turns on tiptoe-ing
    mult = -1/3;
    }
else
    {
    tiptoe = 0;
    mult = -1;
    }

//The following block of code sets the direction the player faces and also has them move in the direction
//Cardinal Directions
if  keyboard_check(vk_up) && !keyboard_check(vk_left) && !keyboard_check(vk_right) //just the up arrow
    {
    dir = "up";
    y -= mult*spd;
    }   
if  keyboard_check(vk_down) && !keyboard_check(vk_left) && !keyboard_check(vk_right) //just the down arrow
    {
    dir = "down";
    y += mult*spd;
    }
if  keyboard_check(vk_right) && !keyboard_check(vk_up) && !keyboard_check(vk_down) //just the right arrow
    {
    dir = "right";
    x += mult*spd;
    }  
if  keyboard_check(vk_left) && !keyboard_check(vk_up) && !keyboard_check(vk_down) //just the left arrow
    {
    dir = "left";
    x -= mult*spd;
    }  
 
//Diagonals
if keyboard_check(vk_up) && keyboard_check(vk_left) //up left
    {
    dir = "ul";
    x -= mult*spd*sqrt(2)/2;
    y -= mult*spd*sqrt(2)/2;
    }
if keyboard_check(vk_up) && keyboard_check(vk_right) //up right
    {
    dir = "ur";
    x += mult*spd*sqrt(2)/2;
    y -= mult*spd*sqrt(2)/2;
    }
if keyboard_check(vk_down) && keyboard_check(vk_left) //down left
    {
    dir = "dl";
    x -= mult*spd*sqrt(2)/2;
    y += mult*spd*sqrt(2)/2;
    }
if keyboard_check(vk_down) && keyboard_check(vk_right) //down right
    {
    dir = "dr";
    x += mult*spd*sqrt(2)/2;
    y += mult*spd*sqrt(2)/2;
    }
