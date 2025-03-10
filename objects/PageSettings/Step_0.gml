if (global.pageSettings)
{
	global.kevinInvisible = true;
	global.playInvisible = true;
	global.pageInvisible = true;
	global.logoInvisible = true;
	global.leaveInvisible = true;
	
	global.backInvisible = false;
	
	// Pequena rotação para dar naturalidade
	image_angle = sin(current_time * 0.003) * 2;
	if (image_alpha < 1)
	{
		image_alpha = image_alpha + 0.1;
	}
	if (y < 20)
	{
		y = y + z;
	}
	else if (y > -400)
	{
		z = 10;
	}
	else
	{
		z = 20;
	}
	
}
else
{
	if (y > -750)
	{
		y = y - z;
	}
	else if (y < -400)
	{
		z = 10;
	}
	else
	{
		z = 20;
	}
	
}