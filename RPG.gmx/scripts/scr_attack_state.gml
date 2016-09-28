    ///scr_attack_state
image_speed = .5;
movement = ATTACK;



if(image_index >= 1 && attacked == false)
{
var xx = 0;
var yy = 0;
    switch(face)
{
    case DOWN:
       xx = x;
       yy = y + 18;
            break;
            
    case UP:
        xx = x;
        yy = y + - 18;
            break;
    
    case RIGHT:
         xx = x + 12;
         yy = y + 2;
            break;
            
    case LEFT:
         xx = x - 12;
         yy = y + 2;
            break;
}

var damage = instance_create(xx,yy,obj_Damage); //turns into the id of the object creating the instance
damage.creator = id;
damage.damage = obj_Player_Stats.attack;
attacked = true;
}
