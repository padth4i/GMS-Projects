/// @description Shield spawn
// You can write your code in this editor

var xx = irandom_range(0, room_width);
var yy = irandom_range(0, room_height);

instance_create_layer(xx, yy, "Instances", obj_shield);

alarm[2] = 15 * room_speed;