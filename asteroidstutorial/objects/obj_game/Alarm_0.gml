/// @description Insert description here
// You can write your code in this editor
if(room != rm_game) {
	exit;
}

if(choose(0,1)) {
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
}

else {
	var yy = choose(0, room_height);
	var xx = irandom_range(0, room_width);
}

instance_create_layer(xx, yy, "Instances", obj_asteroid);

alarm[0] = 4 * room_speed;