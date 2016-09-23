///scr_get_input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = mouse_check_button_pressed(mb_right);
attack_key = mouse_check_button_pressed(mb_left);

//Get the axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

if(gamepad_is_connected(0))
{
right_key = gamepad_button_check_pressed(0,gp_padr);
left_key = gamepad_button_check_pressed(0,gp_padl);
up_key = gamepad_button_check_pressed(0,gp_padu);
down_key = gamepad_button_check_pressed(0,gp_padd);
attack_key = gamepad_button_check_pressed(0,gp_face1);
}
