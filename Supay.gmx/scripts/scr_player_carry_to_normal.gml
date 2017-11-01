///scr_player_carry_to_normal(player, spr_idles);
var player = argument0;
var spr_idles = argument1;

with(player)
{
    player.sprite_index = spr_idles; 
    player_state = ply_state.normal;
    //show_message(player_state);   //just for tests              
    carry_person = 0;
    spd = spd + 8;
}
