///scr_attack_state
image_speed = .5;
switch(sprite_index)
{
    case spr_player_down:
        sprite_index = spr_player_attack_down;
            break;
            
    case spr_player_up:
        sprite_index = spr_player_attack_up;
            break;
    
    case spr_player_right:
        sprite_index = spr_player_attack_right;
            break;
            
    case spr_player_left:
        sprite_index = spr_player_attack_left;
            break;
}
if(image_index >= 1 && attacked == false)
{
var xx = 0;
var yy = 0;
    switch(sprite_index)
{
    case spr_player_attack_down:
       xx = x;
       yy = y + 14;
            break;
            
    case spr_player_attack_up:
        xx = x;
        yy = y + - 10;
            break;
    
    case spr_player_attack_right:
         xx = x + 12;
         yy = y + 2;
            break;
            
    case spr_player_attack_left:
         xx = x - 12;
         yy = y + 2;
            break;
}

var damage = instance_create(xx,yy,obj_damage); //turns into the id of the object creating the instance
damage.creator = id;
damage.damage = obj_player_stats.attack;
attacked = true;
}
