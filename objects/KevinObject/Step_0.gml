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
	if (image_yscale < 4)
	{
		image_yscale = image_yscale + velocity;
	}
	else
	{
		velocity = 0.1
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