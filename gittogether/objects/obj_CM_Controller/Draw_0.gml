/// @description Draw Elements
//draw_sprite(spr_CM_CabinetUI,0,0,0);

// Draw Prizes

//with(obj_CM_Prize) event_perform(ev_draw,0);

// Draw Claw 

//with(obj_CM_Claw) event_perform(ev_draw,0);	

// Draw Surface
if surface_exists(prizeSurf) {
	if (obj_CM_Claw.state == CMClawState.idle) {
		surfAlpha = lerp(surfAlpha, .2, .05);
	} else surfAlpha = lerp(surfAlpha, 1, .1);
	draw_surface_ext(prizeSurf,0,0,1,1,0,c_white,surfAlpha);	
} else {
	// Use Buffer to recreate our surface
	if buffer_exists(prizeSurfBuff) {
		// Create surface
		prizeSurf = surface_create(surfWidth,surfHeight);	
		
		// Copy from buffer to surface
		buffer_set_surface(prizeSurfBuff,prizeSurf,buffer_surface_copy,0,0);	
	}
}

// Draw foreground
/*draw_sprite(spr_CM_CabinetUI,1,0,0);
draw_sprite(spr_CM_CabinetUI,2,0,0);

var _xMove;

switch(global.iMoveX) {
	case 0:	_xMove = 0; break;
	case -1: _xMove = 2; break;
	case 1: _xMove = 1; break;
}

var _yMove = global.iSelect;

draw_sprite(spr_CM_Joystick,_xMove,136,168);
draw_sprite(spr_CM_Button,_yMove,184,162);
draw_sprite(spr_CM_Button,0,184,162);