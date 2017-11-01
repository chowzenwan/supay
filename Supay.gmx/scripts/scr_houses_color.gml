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
var the_end = 0;

/*
show_message(house.value);
show_message(sprite_get_name(house2.sprite_index));
show_message(sprite_get_name(house3.sprite_index));
show_message(sprite_get_name(house4.sprite_index));
show_message(sprite_get_name(house5.sprite_index));
*/
/*
if (sprite_get_name(house.sprite_index) != 'spr_house') && (house.fullhouse == false) global.the_end = global.the_end + 1;
if (sprite_get_name(house2.sprite_index) != 'spr_house') && (house2.fullhouse == false) global.the_end = global.the_end + 1;
if (sprite_get_name(house3.sprite_index) != 'spr_house') && (house3.fullhouse == false) global.the_end = global.the_end + 1;
if (sprite_get_name(house4.sprite_index) != 'spr_house') && (house4.fullhouse == false) global.the_end = global.the_end + 1;
if (sprite_get_name(house5.sprite_index) != 'spr_house') && (house5.fullhouse == false) global.the_end = global.the_end + 1;    
*/

if (sprite_get_name(house.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house2.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house2.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house3.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house3.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house4.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house4.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house5.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house5.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house6.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house6.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house7.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house7.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house8.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house8.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;
if (sprite_get_name(house9.sprite_index) == 'spr_houseredanimation' || sprite_get_name(house9.sprite_index) == 'spr_houseblueanimation') the_end = the_end + 1;

//show_message(the_end);
if (the_end == 5) instance_create(512, 416, obj_the_end);
