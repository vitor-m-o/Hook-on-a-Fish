if (global.kevinInvisible)
{
	if (image_yscale > 0)
	{
		image_yscale = image_yscale - velocity;
	}
	else
	{
		velocity = 0.1
	}
	if (current_time - last_time >= 100) 
	{
		velocity = velocity + 0.1;
		if (image_alpha >= 0)
		{
			image_alpha = image_alpha - 0.1;
		}
    
		last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
{
	if (image_yscale < 3)
	{
		image_yscale = image_yscale + velocity;
	}
	else
	{
		velocity = 0.1;
		
		// Definir os parâmetros da animação
		var freq = 0.001; // Velocidade da animação
		var strength = 0.05; // Intensidade do efeito

		// Criar um efeito de squash & stretch com base no tempo
		var scale_y = 4 + sin(current_time * freq) * strength;

		// Aplicar a escala ao sprite
		image_yscale = scale_y;
	}
	if (current_time - last_time >= 100) 
	{
		velocity = velocity + 0.1;
		if (image_alpha < 1)
		{
			image_alpha = image_alpha + 0.1;
		}
    
		last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
	
}