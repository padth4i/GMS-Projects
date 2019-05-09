/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_space)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_over:
			game_restart();
			break;
	}
}

if(room == rm_game) {
	if (score >= 1000) {
		room_goto(rm_win);
		audio_stop_sound(msc_song);
		audio_play_sound(snd_win, 1, false);
		if(keyboard_check(vk_escape)) {
			game_end();
		}
	}

	if (lives <= 0) {
		room_goto(rm_over);
		audio_stop_sound(msc_song);
		audio_play_sound(snd_lose, 1, false);
	}
}