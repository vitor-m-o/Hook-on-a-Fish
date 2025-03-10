if (global.settingsInvisible)
{
	if (x < 1700)
	{
		x = x + 10;
	}
	
	clickable = false;
	if (current_time - last_time >= 100) 
	{
		if (image_alpha >= 0)
		{
			image_alpha = image_alpha - 0.1;
		}
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
{
	if (x > 1192)
	{
		x = x - 10;
	}
	
	clickable = true;
	// Pequena rotação para dar naturalidade
	image_angle = sin(current_time * 0.003) * 2;
	if (current_time - last_time >= 100) 
	{
		if (image_alpha < 1)
		{
			image_alpha = image_alpha + 0.1;
		}
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}