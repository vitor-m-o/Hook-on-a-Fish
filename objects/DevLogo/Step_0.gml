if (current_time - last_time >= 2100) 
{
	y = y - velocity;
	if (current_time - last_time3 >= 100)
	{
		velocity = velocity + 1;
	}
	
	global.curtainInvisible = true;
}
if (current_time - last_time >= 2600) 
{
	if (c == 0)
	{
		global.kevinInvisible = false;
		global.pageInvisible = false;
		global.leaveInvisible = false;
		global.logoInvisible = false;
		global.playInvisible = false;
		global.settingsInvisible = false;
	}
	c++;
}

if ( (current_time - last_time2 >= 50) and (global.kevinInvisible == true) ) 
{
    image_alpha = image_alpha + 0.1;
    
    last_time2 = current_time;  // Atualiza o tempo para o próximo comando
}