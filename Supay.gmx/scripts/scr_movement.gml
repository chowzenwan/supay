///scr_movement

//Check for ground
if (place_meeting(x,y+1,solidobject)) {
//platform=instance_position(x, y+vspd, solidobject)

//    if instance_exists(platform)
  //  {
    //    if platform.y+20>y
      //  {
    //if vspd>0
    //{
    vspd = 0;
    //}
   // }
    //}    
    //Jumping
    if keyboard_check_pressed(jkey) {
        vspd = -jspd;
    }
} else {
    //Gravity
    if (vspd < 20) {
    //if !(place_meeting(x,y+vspd+20,solidobject))
    //{
        vspd += grav;
      //  }
    }
    //Controlled jumping
    if (keyboard_check_released(jkey) && vspd < -3) {
        vspd = -3;
    }
}

//Move Right
if keyboard_check(rkey) {
    hspd = spd;
//    sprite_index = spr_playerWalk;
} 


//Moving Left
if keyboard_check(lkey) {
    hspd = -spd;
//    sprite_index = spr_playerWalk;
}

//Check if we aren't moving
if !keyboard_check(rkey) && !keyboard_check(lkey) || keyboard_check(rkey) && keyboard_check(lkey) {
    hspd = 0;
//    sprite_index = spr_playerIdle;
}

//Horizontal Collisions
if (place_meeting(x + hspd, y, solidobject)) {
    while (!place_meeting(x+sign(hspd), y, solidobject)) {
        x+=sign(hspd);
    }    
    hspd  = 0;
}

x += hspd;


//Vertical Collisions
if (place_meeting(x, y+vspd, solidobject)) {
//platform=instance_position(x, y+vspd+20, solidobject)

//    if instance_exists(platform)
  //  {
    //    if platform.y+20>y
      //  {
            while (!place_meeting(x, y+sign(vspd), solidobject)) {
                y+=sign(vspd);
            }
            vspd = 0;
        //}
   // }

}

y += vspd;

/*
//Vertical Collisions
if (place_meeting(x, y+vspd, solidobject)) 
    {
        y += sign(vspd);
    } else {   
        y += vspd;
    }
*/
