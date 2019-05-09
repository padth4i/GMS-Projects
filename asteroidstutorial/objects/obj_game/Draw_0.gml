/// @description Insert description here
// You can write your code in this editor
switch(room) {
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
	case rm_start:
		var c = c_yellow;
		draw_set_halign(fa_center);
		draw_text_transformed_color(room_width/2, 100, "ASTEROIDS", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 200, 
		"CONTROLS\n\nUP: Move\nLEFT/RIGHT: Change direction\nSPACE: Shoot\n\n>>  SHOOT TO START  <<");
		draw_set_halign(fa_left);
		break;
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(room_width/2, 200, "YOU WIN", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 300, ">> SHOOT TO PLAY AGAIN <<");
		draw_set_halign(fa_left);
		break;
	case rm_over:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(room_width/2, 200, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 300, "SCORE: " + string(score) + "\n\n>> SHOOT TO RESTART <<");
		draw_set_halign(fa_left);
		break;
}