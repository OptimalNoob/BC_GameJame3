function draw_3d_point(_buf, _x,_y,_z,_normx, _normy, _normz, _u, _v, _color, _alpha){
	vertex_position_3d(_buf, _x, _y, _z);
	vertex_normal(_buf, _normx,_normy,_normz);
	vertex_texcoord(_buf, _u,_v);
	vertex_color(_buf, _color, _alpha);
};

function draw_3d_floor(vbuffer,x1,z1,x2,z2, _y){

	draw_3d_point(vbuffer, x1, _y, z1, 0,1,0,0,0,c_white,1);
	draw_3d_point(vbuffer, x1, _y, z2, 0,1,0,1,0,c_white,1);
	draw_3d_point(vbuffer, x2, _y, z2, 0,1,0,1,1,c_white,1);

	draw_3d_point(vbuffer, x2, _y, z2, 0,1,0,1,1,c_white,1);
	draw_3d_point(vbuffer, x2, _y, z1, 0,1,0,0,1,c_white,1);
	draw_3d_point(vbuffer, x1, _y, z1, 0,1,0,0,0,c_white,1);
};

function draw_3d_cube(buf, x1,y1,z1,x2,y2,z2){
	c1 = make_color_rgb(255,255,255);
	c2 = make_color_rgb(200,200,200);
	c3 = make_color_rgb(150,150,150);
	
	// Front Side
	draw_3d_point(buf, x1, y1, z1, 0,0,1,0,0,c1,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,0,0,c1,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c1,1);

	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c1,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,0,c1,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,0,0,c1,1);
	
	// Left Side
	draw_3d_point(buf, x1, y1, z1, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c2,1);
				  
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,0,0,c2,1);
	
	// Back Side
	draw_3d_point(buf, x1, y1, z2, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c3,1);
				  
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,0,0,c3,1);
	
	// Right Side
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c2,1);
										 
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c2,1);
	
	// Top Side
	draw_3d_point(buf, x1, y2, z1, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x1, y2, z2, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c2,1);
										 
	draw_3d_point(buf, x2, y2, z2, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x2, y2, z1, 0,0,1,0,0,c2,1);
	draw_3d_point(buf, x1, y2, z1, 0,0,1,0,0,c2,1);
												 
	// Bottom Side								 
	draw_3d_point(buf, x1, y1, z1, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x1, y1, z2, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c3,1);
										 
	draw_3d_point(buf, x2, y1, z2, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x2, y1, z1, 0,0,1,0,0,c3,1);
	draw_3d_point(buf, x1, y1, z1, 0,0,1,0,0,c3,1);
};