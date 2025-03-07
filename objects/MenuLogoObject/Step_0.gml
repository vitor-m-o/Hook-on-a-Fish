if (global.logoInvisible)
{
	if (current_time - last_time >= 100) 
	{
		image_alpha = image_alpha - 0.1;
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
{
	speed = 1;
	x = 550 + sin(current_time * 0.002) * 50; // Oscila entre 300 e 500
	if (current_time - last_time >= 100) 
	{
		image_alpha = image_alpha + 0.1;
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}