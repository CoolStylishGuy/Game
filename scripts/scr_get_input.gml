///scr_get_input
// Initialze keys
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
tiptoe_key = keyboard_check(ord('S'));
punch1_key = keyboard_check_pressed(ord('A'));

// Get axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

// Check for gamepad (gamepad device is 0)
if (gamepad_is_connected(0)) {
    // sets deadzone on controller
    gamepad_set_axis_deadzone(0, .35);
    // gets value of left stick horizontal
    xaxis = gamepad_axis_value(0, gp_axislh);
    // gets value of left stick vertical
    yaxis = gamepad_axis_value(0, gp_axislv);
    tiptoe_key = gamepad_button_check(0, gp_face1);
    attack_key = gamepad_button_check_pressed(0, gp_face2);
}
