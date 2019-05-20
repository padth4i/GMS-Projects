/// @description Insert description here
// You can write your code in this editor
if (tile_meeting(x + hspeed, y, "Collision")) {
	while (!tile_meeting(x + sign(hspeed), y, "Collision")) {
		x += sign(hspeed);
	}
	hspeed = -hspeed;
	
}

if (tile_meeting(x, y + vspeed, "Collision")) {
	while (!tile_meeting(x, y + sign(vspeed), "Collision")) {
		y += sign(vspeed);
	}

	vspeed = -vspeed;
}