///scr_move_state
scr_get_input();


if(attack_key)
{
image_index = 0;
state = scr_attack_state;
}

var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

//Get Direction
dir = point_direction(0,0,xaxis,yaxis);

//Get the length
if(xaxis == 0 && yaxis == 0)
{
    len = 0;
} else {
    len = spd
    scr_get_face();
}

//Get the hspd and vspd
hspd = lengthdir_x(len,dir);
vspd = lengthdir_y(len,dir);

//Move 
phy_position_x += hspd;
phy_position_y += vspd;

//Control the sprite
image_speed = sign(len) * .2;

if(len = 0) image_index = 0;



switch(face)
{
//left needs to be right etc. kinda fucked up no idea why
    case RIGHT:
        sprite_index = spr_player_right;
            break;
    case UP:
        sprite_index = spr_player_up;
            break;
    case LEFT:
        sprite_index = spr_player_left;
            break;
    case DOWN:
        sprite_index = spr_player_down;
            break;

}


