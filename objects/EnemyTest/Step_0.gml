/// @description Insert description here
// You can write your code in this editor
zmov-=4
if(zmov<-200){
	zmov = 5000
	xmov = irandom_range(0,1000)
	ymov = irandom_range(0,scene.ground-500)
	x=xmov
	y=ymov
	
show_debug_message(string("enemy: ")+ string(x) + ", " + string(y))

}
