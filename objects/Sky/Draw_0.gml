/// @desc
var _tex = 0;
switch(room){
	case rDebug:
		_tex = sSky01
	break;
	default: break;
};
vertex_submit(skyBuffer, pr_trianglelist, sprite_get_texture(_tex,0))