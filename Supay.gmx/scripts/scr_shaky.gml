///scr_shaky(house, house2, house3, house4, house5, temple, house6, house7, house8, house9);
//arguments
var house = argument0;
var house2 = argument1;
var house3 = argument2;
var house4 = argument3;
var house5 = argument4;
var temple = argument5;
var house6 = argument6;
var house7 = argument7;
var house8 = argument8;
var house9 = argument9;


switch (room_get_name(room))
{
    case 'rm_gameWorldcenter':
    {
        scr_getout(house4);
        scr_getout(house);
        scr_getout(temple);
    }
    break;
    case 'rm_groundright':
    {
        scr_getout(house6);
        scr_getout(house3);
        scr_getout(house5);
    }
    break;
    case 'rm_groundback':
    {
        scr_getout(house7);
        scr_getout(house8);
    }
    break;
    case 'rm_groundleft':
    {
        scr_getout(house2);
        scr_getout(house9);
    }
    break;
}



