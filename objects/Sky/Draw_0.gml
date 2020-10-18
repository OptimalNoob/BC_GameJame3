/// @desc
var _tex = 0;
switch(room){
	case rDebug: 
		_tex = sSky01;
	break;
	case rLevel01: case rLevel02:
		_tex = sSky01;
	break;
	case rLevel03: case rLevel04:
		_tex = sSky01;
	break;
	case rLevel05: case rLevel06:
		_tex = sSky01;
	break;
	case rLevel07: case rLevel08:
		_tex = sSky01;
	break;
	case rLevel09: case rLevel10:
		_tex = sSky01;
	break;
	
	default: break;
};
vertex_submit(skyBuffer, pr_trianglelist, sprite_get_texture(_tex,0))