if (global.secret)
{
	audio_stop_sound(MenuMusic);
	audio_play_sound(secret, 1, false);
	image_alpha = 1;
	global.kevinInvisible = true;
	global.leaveInvisible = true;
	global.logoInvisible = true;
	global.pageInvisible = true;
	global.playInvisible = true;
	global.settingsInvisible = true;
}
else
{
	image_alpha = 0;
}