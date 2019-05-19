///get_input
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
up_release = keyboard_check_released(vk_up);
down = keyboard_check(vk_down);

z_key = keyboard_check(ord("Z"));
enter = keyboard_check(vk_enter);
shift = keyboard_check(vk_shift);

left_mouse = mouse_check_button(mb_left);
middle_mouse = mouse_check_button(mb_middle);
//override controls for gamepad
//var gp_id = 0;
//var thresh = .5;

//if (gamepad_is_connected(gp_id)) {
//    right = gamepad_axis_value(gp_id,gp_axislh) > thresh;
//    left = gamepad_axis_value(gp_id,gp_axislh) < -thresh;
//    up = gamepad_button_check_pressed(gp_id,gp_face1);
//    up_release = gamepad_button_check_released(gp_id,gp_face1);
//    down = gamepad_axis_value(gp_id,gp_axislv) > thresh;
//}