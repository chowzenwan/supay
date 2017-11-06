///scr_pickup_dropdown(player, spr_idles, spr_walks, spr_pickups);

//definition of arguments of script
var player = argument0;
var spr_idles = argument1;
var spr_walks = argument2;
var spr_pickups = argument3;

//definition of vars
var mkey = keyboard_check_pressed(pickupkey);
var name, house;
var hol_red, hol_blue;


//using player objetct
with(player)
{
    switch (player_state) //evaluating player state
    {
        case ply_state.normal:
        {
            if (distance_to_object(obj_person) <= 1) && (mkey)
            { 
                //show_message('Well then ....player pickup person'); //just for tests
                instanceperson = instance_nearest(player.x, player.y, obj_person);
                with (instanceperson) 
                {
                    instance_destroy();
                }
                scr_player_normal_to_carry(player, spr_pickups);
            }
        }
        break;
        case ply_state.carry:
        {
            if (distance_to_object(obj_houses) <= 1) && (mkey && carry_person == 1)
            {
                name = object_get_name(object_index);
                //show_message(name); //just for tests
                instancehouse = instance_nearest(player.x, player.y, obj_houses);
                scr_player_carry_to_normal(player, spr_idles);
                with (instancehouse)
                {
                    house = object_get_name(object_index);
                    //show_message(house); //just for tests
                    value = value + 1;
                    //show_message('num persons : ' + string(value)); //just for tests
                    
                    if (name == 'obj_player1') red = red + 1;
                    if (name == 'obj_player2') blue = blue + 1;
                        
                    //show_message('red: ' + string(red) + ' blue: ' + string(blue)); //just for tests
                        
                    if (red > blue) 
                    {
                        sprite_index = spr_houseredanimation; 
                    }
                    if (red < blue) 
                    {
                        sprite_index = spr_houseblueanimation; 
                    }
                    if (red = blue) 
                    {
                        sprite_index = spr_houseanimation; 
                    }              
                }
                scr_houses_color(obj_house, obj_house2, obj_house3, obj_house4, obj_house5, obj_house6, obj_house7, obj_house8, obj_house9);
                //shaky
                //show_message(carry_person);
                    if !instance_exists(obj_person) && (obj_player2.carry_person == 0) && (obj_player1.carry_person == 0)
                    {
                        obj_supay.sprite_index = spr_fire;                 
                        //alarm[1] = 100 * room_speed;
                        timer = 0;
                        while(timer <1)
                        {
                            timer += 0.001;
                        }
                        //scr_shaky(obj_house, obj_house2,obj_house3, obj_house4, obj_house5, obj_temple, obj_house6,obj_house7, obj_house8, obj_house9);
                        //show_message('ola');
                        //obj_supay.sprite_index = spr_idle;  
                    }
            }
            if (distance_to_object(obj_houseoflove) <= 1) && (mkey && carry_person == 1)
            {               
                name = object_get_name(player.object_index);
                //show_message(name); //just for tests
                with (obj_houseoflove)
                {
                    if (fullhouse == false) 
                    {
                        //show_message('when is false');
                        if (name == 'obj_player1' && red < 1) 
                        {
                            red = red + 1;
                            scr_player_carry_to_normal(player, spr_idles);
                        }
                        if (name == 'obj_player2' && blue < 1) 
                        {
                            blue = blue + 1;
                            scr_player_carry_to_normal(player, spr_idles);
                        }
                        //show_message('red: ' + string(red) + 'blue: ' + string(blue));  
                    }
                }
            }
            if (distance_to_object(obj_temple) <= 1) && (mkey && carry_person == 1) 
            {
                name = object_get_name(object_index);
                //show_message(name); //just for tests
                instancetemple = instance_nearest(player.x, player.y, obj_temple);
                scr_player_carry_to_normal(player, spr_idles);
                with (instancetemple)
                {
                    //temple = object_get_name(object_index);
                    //show_message(temple); //just for tests
                    value = value + 1;
                    show_message('num persons : ' + string(value)); //just for tests
                    
                    if (name == 'obj_player1') red = red + 1;
                    if (name == 'obj_player2') blue = blue + 1;
                        
                    //show_message('red: ' + string(red) + ' blue: ' + string(blue)); //just for tests
                    //TODO: change temple sprites  
                    //if (value >= 1) sprite_index = spr_templefull;
                }
            }
            if (mkey && carry_person == 1)
            {
                scr_player_carry_to_normal(player, spr_idles);
                guai = (player.y - 20 ); //to do : afinar
                instance_create(player.x, guai, obj_person);
            }                
        }
        break;
    }
}

