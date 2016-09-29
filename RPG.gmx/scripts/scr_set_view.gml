///scr_set_view
rm_name = room_get_name(obj_Player_Stats.previous_room);
rm_id = asset_get_index(rm_name);
room_set_view_enabled(rm_id,true);
room_set_view(rm_id,0,true,0,0,960,540,0,0,1920,1080,480,270,hspeed,vspeed,obj_Player);


