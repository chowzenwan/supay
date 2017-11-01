///scr_player_normal_to_carry(player, spr_pickups);
var player = argument0;
var spr_pickups = argument1;

with(player)
{
    sprite_index = spr_pickups;
    player_state = ply_state.carry;
    //show_message(player_state); //just for tests
    carry_person = 1;
    spd = spd_carry;
}
