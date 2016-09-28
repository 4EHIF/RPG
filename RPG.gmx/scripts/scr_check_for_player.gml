///scr_check_for_player
if(instance_exists(obj_Player))
{
    var dis = point_distance(x,y,obj_Player.x,obj_Player.y);
    if(dis < sight) 
    {
        state = scr_enemy_chase_state;
        var dir = point_direction(x,y,obj_Player.x, obj_Player.y);
        xaxis = lengthdir_x(1,dir);
        yaxis = lengthdir_y(1,dir);
    } else {
        scr_enemy_choose_next_state();
    } 
    
} else {
    scr_enemy_choose_next_state();
}
