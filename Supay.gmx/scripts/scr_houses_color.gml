///scr_houses_color(house, house2, house3, house4, house5, house6, house7, house8, house9);

var house = argument0;
var house2 = argument1;
var house3 = argument2;
var house4 = argument3;
var house5 = argument4;
var house6 = argument5;
var house7 = argument6;
var house8 = argument7;
var house9 = argument8;

//other vars
global.the_end = 0;
//show_message('this is room: ' + room_get_name(room));
switch (room_get_name(room))
{
    case 'rm_gameWorldcenter':
    {
    /*
        if (sprite_get_name(house4.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house4.sprite_index) == 'spr_houseblueanimation') global.the_end = global.the_end +  1;
        if (sprite_get_name(house.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house.sprite_index) == 'spr_houseblueanimation') global.the_end = global.the_end +  1;
        */
        if (house.value >= 1) && (house4.value >=1) global.rmFront = true else global.rmFront = false;
    }
    break;
    case 'rm_groundright':
    {
        //if (sprite_get_name(house3.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house3.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        //if (sprite_get_name(house5.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house5.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        //if (sprite_get_name(house6.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house6.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        
        if(house3.value >= 1) && (house5.value >= 1) && (house6.value >= 1) global.rmRight = true else global.rmRight = false;
    }
    break;
    case 'rm_groundback':
    {
        //if (sprite_get_name(house7.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house7.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        //if (sprite_get_name(house8.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house8.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        
        if (house7.value >= 1) && (house8.value >= 1) global.rmBack = true else global.rmBack = false;
    }
    break;
    case 'rm_groundleft':
    {
        //if (sprite_get_name(house2.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house2.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        //if (sprite_get_name(house9.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house9.sprite_index) == 'spr_houseblueanimation') global.the_end += 1;
        
        if (house2.value >= 1) && (house9.value >= 1) global.rmLeft = true else global.rmLeft = false;
    }
    break;
}

if (global.rmFront) && (global.rmLeft) && (global.rmBack) && (global.rmRight) global.the_end = 1;

//show_message('the end value is: ' + string(global.the_end));
//if (global.the_end == 1) instance_create(561, 216, obj_the_end);
