///@arg x
///@arg y
///@arg tilemap

var xx, yy, tilemap, xp, yp, meeting;

xx = argument0;
yy = argument1;
tilelayer = argument2;

var layer_id = layer_get_id(tilelayer);
var tilemap = layer_tilemap_get_id(layer_id);
//save our current position
xp = x;
yp = y;

//move to the position where we wanna check for a tile collision
x = xx;
y = yy;

//check for collision on all four corners of the collision mask
meeting =		tilemap_get_at_pixel(tilemap, bbox_right, bbox_top)
				||
				tilemap_get_at_pixel(tilemap, bbox_right, bbox_bottom)
				||
				tilemap_get_at_pixel(tilemap, bbox_left, bbox_top)
				||
				tilemap_get_at_pixel(tilemap, bbox_left, bbox_bottom);

//Move back to the original position
x = xp;
y = yp;

//Return wether or not there was a collision
return (meeting);	