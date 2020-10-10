/// @desc
draw_text(16,16 * 1,	"X: "		+ string(camx));
draw_text(16,16 * 2,	"Y: "		+ string(camy));
draw_text(16,16 * 3,	"Z: "		+ string(camz));
draw_text(16,16 * 7,	"Zoom: "	+ string(zoom));
if(follow != noone){
	draw_text(16,16 * 9,	"Player X: "	+ string(follow.x));
	draw_text(16,16 * 10,	"Player Y: "	+ string(follow.y));
};