/// @description Insert description here
// You can write your code in this editor
playerBuffer[0] = vertex_create_buffer();
playerBuffer[1] = vertex_create_buffer();
playerBuffer[2] = vertex_create_buffer();
playerBuffer[3] = vertex_create_buffer();
playerBuffer[4] = vertex_create_buffer();

matrix = 0
xmov = 0
ymov = scene.ground - 500
zmov = 100
xmov=x
ymov=y

show_debug_message(string("enemy: ")+ string(x) + ", " + string(y))


panelSize = 256

for(i=0;i<5;i++){
vertex_begin(playerBuffer[i], Camera.format);
draw_3d_wall(playerBuffer[i], -panelSize/2,-panelSize/2,panelSize/2,panelSize/2, 0, c_white)
vertex_end(playerBuffer[i]);
}
