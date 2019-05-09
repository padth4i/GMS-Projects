/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) {
	image_angle += 5;
}

if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

if (keyboard_check(vk_up)) {
	motion_add(image_angle, 0.05);
}

if (keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x, y, "Instances", obj_bullet);
	inst.direction = image_angle;
	audio_play_sound(snd_zap, 1, false);
}

if (sprite_index == spr_shipshield) {
	global.shipshield_timer += room_speed;
}

if (global.shipshield_timer >= 360 * room_speed) {
	sprite_index = spr_ship;
	mask_index = spr_ship;
}
move_wrap(true, true, sprite_width/32);