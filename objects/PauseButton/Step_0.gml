if (global.pauseButton)
{
	if (current_time - last_time >= 100) 
	{
		if (image_alpha < 1)
		{
			image_alpha = image_alpha + 0.1;
		}
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
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