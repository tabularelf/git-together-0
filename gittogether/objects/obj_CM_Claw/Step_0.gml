/// @description Main Code

// Get State
/*switch(state) {
	
}*/

if (state == CMClawState.idle) {
	if ClawTries == 0 {
		//game_end();	
	}
}

if (state == CMClawState.idle) && (global.iSelect) {
	state = CMClawState.moving;	
}

if (state == CMClawState.moving) {
	vsp = spd;
} 

if (state == CMClawState.idle) {
	hsp = global.iMoveX;	
	/*if (global.iMoveY != 0) {
		z += global.iMoveY;
	}*/
}	

x += hsp*spd;
y += vsp;

// Reset movement values
hsp = 0;
vsp = 0;

//y = clamp(y,sprite_get_bbox_top(sprite_index),room_height-sprite_get_bbox_bottom(sprite_index));

if (state == CMClawState.moving) && (y > room_height-sprite_get_bbox_bottom(sprite_index)-8) {
	alarm[0] = 60;
	image_speed = 1;
	state = CMClawState.grabbing;	
}

if (state == CMClawState.dropping) {
	if y != ystart {
		y--;	
	}
	
	if (x < clawDropOff) x++;
	if (x > clawDropOff) x--;
	z++;
	
	if (x == clawDropOff) && (y == ystart) {
		state = CMClawState.dropped;
		alarm[1] = 30;
	}
	
}

if (state == CMClawState.reset) {
	if (x < startingPos) x++;
	if (x > startingPos) x--;
	
	if (x == startingPos) state = CMClawState.idle;
}

//show_debug_message(x);
x = clamp(x,round(sprite_get_bbox_right(sprite_index)/2),round(room_width-(sprite_get_bbox_right(sprite_index)/2)));
z = clamp(z, -32, 0);
//depth = z-1;