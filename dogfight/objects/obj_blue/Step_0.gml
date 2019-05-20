/// @description Insert description here
// You can write your code in this editor
speed = 0;

if(keyboard_check(vk_up)) {
	direction = image_angle;
	speed = 2;
}

if(keyboard_check(vk_down)) {
	direction = image_angle+180;
	speed = 2;
}

if(keyboard_check(vk_left)) {
	image_angle+=5;
}

if(keyboard_check(vk_right)) {
	image_angle-=5;
}

if(keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x + lengthdir_x(40, image_angle),	y + lengthdir_y(40, image_angle), "Instances", obj_bullet_blue);
	inst.direction = image_angle;
}

move_wrap(true, true, sprite_width/4);