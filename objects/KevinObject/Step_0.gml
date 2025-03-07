// parameters of the animation
var freq =  0.002; // velocity of the animation
var strength = 0.02; // Intensity of the animation

// Squash effect changing the objects scale
var scale_y = 4 - abs(sin(current_time * freq)) * strength;
var scale_x = 15 / scale_y; // Keeps object volume

// Apply to the scale's property
image_xscale = scale_x;
image_yscale = scale_y;

// keep the same coordenates as before
x = 256
y = 736

if (global.kevinInvisible)
{
	if (current_time - last_time >= 100) 
	{
    
	image_alpha = image_alpha - 0.1;
    
    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}
else
{
	if (current_time - last_time >= 100) 
	{
    
	image_alpha = image_alpha + 0.1;
    
    last_time = current_time;  // Atualiza o tempo para o próximo comando
	}
}