///scr_load_game

//Get the contents of the savegame.txt
var file = file_text_open_read(working_directory + "Savegame.txt");
var save_string = file_text_read_string(file);
file_text_close(file)

//Decode the file
save_string = base64_decode(save_string);
var save_data = json_decode(save_string);

//If we're not currently in the saved room this function will place you in the room which was stored in the Savegame.txt
var save_room = save_data[? "Room"];
if(room != save_room)
{
    room_goto(save_room);
}

//Get the rest of the data saved in Savegame.txt
with(obj_Player_Stats)
{
    player_xstart = save_data[? "x"];
    player_ystart = save_data[? "y"];
    if(instance_exists(obj_Player))
    {
        obj_Player.x = player_xstart;
        obj_Player.y = player_ystart;
        obj_Player.phy_position_x = player_xstart;
        obj_Player.phy_position_y = player_ystart;
        
    } else
        {
            instance_create(player_xstart,player_ystart, obj_Player);
        }
        
    hp = save_data[? "HP"];
    maxhp = save_data[? "Maxhp"];
    stamina = save_data[? "Stamina"];
    maxstamina = save_data[? "MaxStamina"];
    expr = save_data[? "Experience"];
    maxexpr = save_data[? "MaxExperience"];
    level = save_data[? "level"];
    attack = save_data[? "Attack"];
}
ds_map_destroy(save_data);


