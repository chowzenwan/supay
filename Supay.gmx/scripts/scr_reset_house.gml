///scr_reset_house(obj_house)
//arguments
var house = argument0;
with house
{
    value = 0;
    red = 0;
    blue = 0;
    fullhouse = false;
    name = object_get_name(house);
    if(name == 'obj_temple')
    {
        sprite_index = spr_templenormal; 
    } else {
        sprite_index = spr_house;
    }
}
