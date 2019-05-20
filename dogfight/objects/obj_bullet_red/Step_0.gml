/// @description Insert description here
// You can write your code in this editor
if (instance_number(obj_bullet_red) > 1) {
	with (instance_find(obj_bullet_red, 1)) {
		instance_destroy();
	}
}

bullet_timer += room_speed;

if (bullet_timer > 360 * room_speed) {
	instance_destroy();
}

move_wrap(true, true, sprite_width/2);