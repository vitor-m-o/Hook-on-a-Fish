if (global.logoInvisible)
{
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
	// Configurações do efeito
	var freq = 0.008; // Frequência da animação (ajuste para o ritmo da música)
	var strength = 0.7; // Intensidade do efeito

	// Modifica a escala para dar o efeito de "batida"
	var scale_factor = 4 + sin(current_time * freq) * strength;

	image_xscale = scale_factor;
	image_yscale = scale_factor;
	
	if (current_time - last_time >= 100) 
	{
		if (image_alpha < 1)
		{
			image_alpha = image_alpha + 0.1;
		}
		freq = freq + 0.01;
		
		if (freq >= 0.10)
		{
			freq = 0.01;
		}
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}