/// @description Insert description here
// You can write your code in this editor
reticleBuffer = vertex_create_buffer();

xmov = x;
ymov = y;
zmov = 1500;

var sSize = 32;

vertex_begin(reticleBuffer, Camera.format);
draw_3d_wall(reticleBuffer, -sSize,-sSize,sSize,sSize, 0, c_white)
vertex_end(reticleBuffer);
