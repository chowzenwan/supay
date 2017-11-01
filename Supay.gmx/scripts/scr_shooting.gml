///scr_shooting

//shooting

if keyboard_check(shootkey)=true and bullet_timer>=1 and (player_state = ply_state.normal)
{
    bullet_timer=0
    arrow=instance_create(x,y,obj_arrow)
    arrow.speed = 8
    arrow.gravity = .75
    
    if image_xscale=1
        {
        arrow.direction=135
        }
        
    if image_xscale=-1
        {
        arrow.direction=45
        }
}


//bullet timer resetting
if bullet_timer<1
{
bullet_timer+=0.1
}
