///scr_getout(obj_house)
//arguments
var house = argument0;

if house.value > 0
{
    for (i = 0; i < house.value; i += 1)
    {
        guai = (house.y-10);
        equis = (house.x-10);
        instance_create(equis, guai, obj_person);
        //show_message(i);
    }
    scr_reset_house(house);
}
