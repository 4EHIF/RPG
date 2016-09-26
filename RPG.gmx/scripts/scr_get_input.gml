///scr_get_input
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
dash_key = mouse_check_button_pressed(mb_right);
attack_key = mouse_check_button_pressed(mb_left);
pause_key=keyboard_check_pressed(vk_escape);

//Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

if(gamepad_is_connected(0))
{
gamepad_set_axis_deadzone(0,.35);
xaxis=gamepad_axis_value(0,gp_axislh);
yaxis=gamepad_axis_value(0,gp_axislv);
dash_key=gamepad_button_check_pressed(0,gp_face3);
attack_key = gamepad_button_check_pressed(0,gp_face1);
pause_key=gamepad_button_check_pressed(0,gp_start);
}
