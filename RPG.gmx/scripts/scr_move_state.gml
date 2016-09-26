///scr_move_state()
///scr_move_state

if(obj_input.dash_key)
{
    var xdir = lengthdir_x(8,face * 90);
    var ydir = lengthdir_y(8,face*90);
    var speaker = instance_place(x+xdir,y+ydir, obj_speaker);
    if(speaker != noone)
    {
        with(speaker)
    {
        if(!instance_exists(dialog))
        {
            dialog = instance_create(x+xoffset,y+yoffset,obj_dialog);
            dialog.text = text;
        } else {
            dialog.text_page++;
            dialog.text_count = 0;
            if(dialog.text_page > array_length_1d(dialog.text) -1)
            {
                with(dialog) {
                    instance_destroy();
                }
            }
        }
    }
        //talk to the speaker
    } else if(obj_player_stats.stamina >= 5)
        {
        //dash
        state=scr_dash_state;
        alarm[0]=room_speed/10;
        obj_player_stats.stamina -= 5;
        obj_player_stats.alarm[0] = room_speed;
    }
}

if(obj_input.attack_key)
{
    image_index = 0;
    state = scr_attack_state;
}

//Get Direction
dir = point_direction(0,0,obj_input.xaxis,obj_input.yaxis);

//Get the length
if(obj_input.xaxis == 0 && obj_input.yaxis == 0)
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

