///scr_color_win(house, house2, house3, house4, house5, house6, house7, house8, house9);
//arguments
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
var red = 0;
var blue = 0;

if (sprite_get_name(house.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house2.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house2.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house3.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house3.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house4.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house4.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house5.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house5.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house6.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house6.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house7.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house7.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house8.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house8.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (sprite_get_name(house9.sprite_index) == 'spr_houseredanimation') red = red + 1;
if (sprite_get_name(house9.sprite_index) == 'spr_houseblueanimation') blue = blue + 1;

if (red > blue) room_goto(rm_redwin) else room_goto(rm_bluewin);
