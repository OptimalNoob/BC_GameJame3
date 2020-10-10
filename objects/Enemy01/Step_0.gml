x = lerp(x,Player.x,			StackOffset	 + (StackSpeed * offset) / 5);
y = lerp(y,Player.y + vert_off,	StackOffset	 + (StackSpeed * offset) / 5);
depth -= 0.6;
image_xscale = min(80 / depth, 7);
image_yscale = min(80 / depth, 7);

if(depth <= 0){
	instance_destroy();
};