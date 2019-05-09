/// @description Initializing the object
// You can write your code in this editor
sprite_index = choose( spr_asteroid_large, spr_asteroid_medium, spr_asteroid_small );

direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

speed = 1;