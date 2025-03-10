if (global.logoInvisible)
{
	image_angle = image_angle + 10;
	if (current_time - last_time >= 100) 
	{
		if (image_alpha >= 0)
		{
			image_yscale = image_yscale - 0.5;
			image_xscale = image_xscale - 0.5;
			image_alpha = image_alpha - 0.1;
		}
    
		last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
{
	image_angle = 0;
	
	// Obtém o tempo atual
	tempo_atual = current_time;

	// Verifica se passou o intervalo da batida
	if (tempo_atual - tempo_batida >= intervalo) {
	    tempo_batida = tempo_atual; // Reinicia o temporizador
	    image_xscale = forca_batida;
	    image_yscale = forca_batida;
	} else {
	    // Suaviza o efeito da batida voltando ao tamanho normal
	    image_xscale = lerp(image_xscale, 4, 0.05);
	    image_yscale = lerp(image_yscale, 4, 0.05);
	}	
	
	if (current_time - last_time >= 100) 
	{
		if (image_alpha < 1)
		{
			image_alpha = image_alpha + 0.1;
		}
    
	    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}