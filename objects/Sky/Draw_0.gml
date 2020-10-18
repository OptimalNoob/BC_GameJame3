/// @desc
var _tex = 0;
switch(room){
	case rDebug: case rLevel01:
		_tex = sSky01;
	break;
	case rLevel02:
		_tex = sSky01;
	break;
	case rLevel03:
		_tex = sSky01;
	break;
	
	default: break;
};
vertex_submit(skyBuffer, pr_trianglelist, sprite_get_texture(_tex,0))