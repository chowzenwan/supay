///scr_sprites(player, spr_idles, spr_walks);

// casos player1(obj_player1, spr_playerIdle, spr_playerWalk)
// casos player2(obj_player2, spr_player02Idle, spr_player02Walk)

var player = argument0;
var spr_idles = argument1;
var spr_walks = argument2

with(player) {
    
    if(player_state == ply_state.normal)
    {
        if (keyboard_check(rkey) || keyboard_check(lkey)) 
        {
            sprite_index = spr_walks;
        } else {
            sprite_index = spr_idles
        }
    }

//Direction of sprite
    if (xprevious < x) 
    {
        image_xscale = -1;
        } else if (xprevious > x) {
        image_xscale = 1;
    }
}
