/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);

switch(room) {
	case rm_start :
		draw_text_transformed_color(room_width/2, 100, "TANK WARS", 3, 3, 0, 
			c_yellow, c_blue, c_lime, c_red, 1);
		draw_text_transformed_color(room_width/2, 200, "RED CONTROLS", 1, 1, 0, 
			c_red, c_red, c_red, c_red, 1);
		draw_text(room_width/2, 220, "WASD to move\nTAB to shoot");
		draw_text_transformed_color(room_width/2, 280, "BLUE CONTROLS", 1, 1, 0, 
			c_blue, c_blue, c_blue, c_blue, 1);
		draw_text(room_width/2, 300, "Arrow keys to move\nSPACE to shoot");
		break;
	case rm_win:
		if(global.score_red > global.score_blue) {
			var c = c_red;
			draw_text_transformed_color(room_width/2, 200, "RED WINS!!", 2, 2, 0, c, c, c, c, 1);
			draw_text(room_width/2, 260, "Press ENTER to play again");
		}
		else {
			var c = c_blue;
			draw_text_transformed_color(room_width/2, 200, "BLUE WINS!!", 2, 2, 0, c, c, c, c, 1);
			draw_text(room_width/2, 260, "Press ENTER to play again");
		}
		break;
}