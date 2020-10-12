/// @desc
if(alarm[1] == -1){
	alarm[1] = 10;
	fpsOut = string(fps_real);
};

if (keyboard_check(vk_escape)){
    game_end();
};
if (keyboard_check(ord("R"))){
    game_restart();
};


if(mouse_wheel_up())	zoom = min(-200, zoom + 10);
if(mouse_wheel_down())	zoom -= 10;

camz = lerp(camz, zoom, 0.06);

lookx = camx;
looky = camy;
if(done) window_mouse_set(clamp(window_mouse_get_x(),0,window_get_width()),clamp(window_mouse_get_y(),0,window_get_height()));

if(keyboard_check(ord("A"))) camx--;
if(keyboard_check(ord("D"))) camx++;
if(keyboard_check(ord("W"))) camy++;
if(keyboard_check(ord("S"))) camy--;

if(follow != noone){
	camx = clamp(lerp(camx,follow.x,0.15), 0 + cam_w / 2, room_width - cam_w / 2);
	camy = lerp(camy,follow.y - 80,0.15);
};
if(keyboard_check_pressed(ord("L"))){
	PlayerHP--;
};

if(keyboard_check_pressed(vk_f11)) window_set_fullscreen(!window_get_fullscreen())