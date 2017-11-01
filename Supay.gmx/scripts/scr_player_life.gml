///scr_player_life(player, heart);

var player = argument0;
var heart = argument1;
with (player)
{ 
    if !recently_hit
    {
        //show_message(player_life);
        player_life += 1;
        heart.image_index = player_life;
        recently_hit = true;
        alarm[0] = 1 * room_speed;
        if (player_life = 6)
        {
            scr_game_over();
        }    
    }
}
