/// @description Insert description here
// You can write your code in this editor
enemyBuffer[0] = vertex_create_buffer();
enemyBuffer[1] = vertex_create_buffer();
enemyBuffer[2] = vertex_create_buffer();
enemyBuffer[3] = vertex_create_buffer();
enemyBuffer[4] = vertex_create_buffer();
enemyBuffer[5] = vertex_create_buffer();

matrix = 0

xmov = 300
ymov = scene.ground - 500
zmov = 1000

panelSize = 256

vertex_begin(enemyBuffer[0], Camera.format);
draw_3d_wall(enemyBuffer[0], 0,0,panelSize,panelSize, 0, c_white)
vertex_end(enemyBuffer[0]);

vertex_begin(enemyBuffer[1], Camera.format);
draw_3d_wall(enemyBuffer[1], 0,0,panelSize,panelSize, 0, c_white)
vertex_end(enemyBuffer[1]);

vertex_begin(enemyBuffer[2], Camera.format);
draw_3d_wall(enemyBuffer[2], 0,0,panelSize,panelSize, 0, c_white)
vertex_end(enemyBuffer[2]);

vertex_begin(enemyBuffer[3], Camera.format);
draw_3d_wall(enemyBuffer[3], 0,0,panelSize,panelSize, 0, c_white)
vertex_end(enemyBuffer[3]);

vertex_begin(enemyBuffer[4], Camera.format);
draw_3d_wall(enemyBuffer[4], 0,0,panelSize,panelSize, 0, c_white)
vertex_end(enemyBuffer[4]);

vertex_begin(enemyBuffer[5], Camera.format);
draw_3d_wall(enemyBuffer[5], 0,0,panelSize,panelSize, 0, c_white)
vertex_end(enemyBuffer[5]);


