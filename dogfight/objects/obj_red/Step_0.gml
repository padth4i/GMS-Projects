/// @description Insert description here
// You can write your code in this editor
speed = 0;

if(keyboard_check(ord("W"))) {
	direction = image_angle;
	speed = 2;
}

if(keyboard_check(ord("S"))) {
	direction = image_angle+180;
	speed = 2;
}

if(keyboard_check(ord("A"))) {
	image_angle+=5;
}

if(keyboard_check(ord("D"))) {
	image_angle-=5;
}

if(keyboard_check_pressed(vk_tab)) {
	var inst = instance_create_layer(x + lengthdir_x(40, image_angle), y + lengthdir_y(40, image_angle), "Instances", obj_bullet_red);
	inst.direction = image_angle;
}

move_wrap(true, true, sprite_width/4);