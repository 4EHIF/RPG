///scr_attack_state
image_speed = .5;
switch(sprite_index)
{
    case spr_Player_Down:
        sprite_index = spr_Player_Attack_Down;
            break;
            
    case spr_Player_Up:
        sprite_index = spr_Player_Attack_Up;
            break;
    
    case spr_Player_Right:
        sprite_index = spr_Player_Attack_Right;
            break;
            
    case spr_Player_Left:
        sprite_index = spr_Player_Attack_Left;
            break;
}
if(image_index >= 1 && attacked == false)
{
var xx = 0;
var yy = 0;
    switch(sprite_index)
{
    case spr_Player_Attack_Down:
       xx = x;
       yy = y + 14;
            break;
            
    case spr_Player_Attack_Up:
        xx = x;
        yy = y + - 10;
            break;
    
    case spr_Player_Attack_Right:
         xx = x + 12;
         yy = y + 2;
            break;
            
    case spr_Player_Attack_Left:
         xx = x - 12;
         yy = y + 2;
            break;
}

var damage = instance_create(xx,yy,obj_Damage); //turns into the id of the object creating the instance
damage.creator = id;
damage.damage = obj_Player_Stats.attack;
attacked = true;
}
