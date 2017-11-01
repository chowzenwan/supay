/*///room_goto_transition(room, transition, x, y, [time]);
with (instance_create(0, 0, sys_transition)) {
    next_room = argument[0];
    kind = argument[1];
    xx = argument[2];
    yy = argument[3];
    
    if (argument_count >= 5 && argument[4] > 0) { time = argument[4]; }
}

//for isle rotation(comin soon)*/
