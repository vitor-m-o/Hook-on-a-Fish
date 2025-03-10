if (global.pageInvisible)
{
	if (x < 1771)
	{
		x = x + 10;
	}
	
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
	if (x > 1240)
	{
		x = x - 10;
	}
	// Movimento oscilante (seno para ir para os lados)
	//x += sin(current_time * 0.005) * 2;

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