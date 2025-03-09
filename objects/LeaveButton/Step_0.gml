if (global.leaveInvisible)
{
	if (current_time - last_time >= 100) 
	{
		if (image_alpha > 0)
		{
			image_alpha = image_alpha - 0.1;
		}
    
		last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
{
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

if (end_game)
{
	if (current_time - last_time_end >= 5000)
	{
		game_end();
	}
}