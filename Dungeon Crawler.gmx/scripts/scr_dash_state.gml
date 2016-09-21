///scr_move_state

//Get the hspd and vspd 
hspd = xaxis * spd;
vspd = yaxis * spd;
len = spd*4;

//Get the hspd and vspd
//hspd = lengthdir_x(len,dir);
//vspd = lengthdir_y(len,dir);

//Move 
phy_position_x += hspd;
phy_position_y += vspd;


