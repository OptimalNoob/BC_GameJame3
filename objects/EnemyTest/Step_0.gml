/// @description Insert description here
// You can write your code in this editor
zmov-=4
if(zmov<-200){
	zmov = 5000
	x = irandom_range(0,1000)
	y = irandom_range(0,scene.ground-500)
	xmov=x
	ymov=y
show_debug_message(string("enemy: ")+ string(x) + ", " + string(y))

}
