/// @description Insert description here
// You can write your code in this editor
skyBuffer = vertex_create_buffer();

x1 = -4096 * 3
y1 = scene.ground
x2 = 4096 * 3
y2 = -4096
z = 4096


vertex_begin(skyBuffer, Camera.format);
draw_3d_wall(skyBuffer, x1, y1, x2, y2, z);
vertex_end(skyBuffer);