if (current_time - last_time >= 2200) 
{
    image_xscale = image_xscale + 0.0005;
	image_yscale = image_yscale + 0.0005;
	image_alpha = image_alpha - 0.07;
}
if (current_time - last_time >= 1500) 
{
	global.kevinInvisible = false;
	global.pageInvisible = false;
	global.leaveInvisible = false;
	global.logoInvisible = false;
	global.playInvisible = false;
	global.settingsInvisible = false;
	
	y = y - velocity;
	if (current_time - last_time3 >= 100)
	{
		velocity = velocity + 1;
	}
	global.curtainInvisible = true;
}

if ( (current_time - last_time2 >= 50) and (global.kevinInvisible == true) ) 
{
    image_alpha = image_alpha + 0.1;
    
    last_time2 = current_time;  // Atualiza o tempo para o próximo comando
}