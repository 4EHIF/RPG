//scr_save_game();

//Check if player object exists
if(!instance_exists(obj_Player_Stats)) exit;

//Create the save datastructure
var save_data = ds_map_create();

with(obj_Player_Stats)
{
    save_data[? "Room"] = previous_room;
    save_data[? "x"] = player_xstart;
    save_data[? "y"] = player_ystart;
    save_data[? "HP"] = hp;
    save_data[? "Maxhp"] = maxhp;
    save_data[? "Stamina"] = stamina;
    save_data[? "MaxStamina"] = maxstamina;
    save_data[? "Experience"] = expr;
    save_data[? "MaxExperience"] = maxexpr;
    save_data[? "level"] = level;
    save_data[? "Attack"] = attack;
    save_data[? "Mana"] = mana;
    save_data[? "MaxMana"] = maxmana;
}
//Encypt the ds to a string and then delete the ds
var save_string = json_encode(save_data);
ds_map_destroy(save_data);
save_string = base64_encode(save_string);

//Open a file
var file = file_text_open_write(working_directory + "Savegame.txt");
file_text_write_string(file,save_string);
file_text_close(file);

show_message("Game saved");

