/// @description Insert description here
// You can write your code in this editor
shield_timer += room_speed;

if (shield_timer > 250 * room_speed) {
	instance_destroy();
}