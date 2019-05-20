/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)) {
	switch (room) {
		case rm_start:
			room_goto(rm_level_1);
			break;
		case rm_win:
			room_goto(rm_start);
			global.score_blue = 0;
			global.score_red = 0;
			break;
	}
}
var score_total = global.score_blue + global.score_red;

if(score_total == 10 && room == rm_level_1)
	room_goto(rm_level_2);
else if(score_total == 20 && room == rm_level_2)
	room_goto(rm_level_3);
else if(score_total == 30 && room = rm_level_3)
	room_goto(rm_win);