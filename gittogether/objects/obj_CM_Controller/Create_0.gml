/// @description Create Prizes

prizeNum = 24;

spawnMinX = 128;
spawnMaxX = 232;
spawnY = room_height-48;

instance_create_depth(0,0,4,obj_CM_UI);
with(instance_create_depth(0,0,-34,obj_CM_UI)) uiType = 1;
var _maxSpawn = sprite_get_number(spr_CM_Prize);
for(var i = 0; i < prizeNum; i++;) {
	var _x = irandom_range(spawnMinX,spawnMaxX);
	with(instance_create_layer(_x,spawnY,"Instances",obj_CM_Prize)) {
		image_index = i mod _maxSpawn;
	}
}


// Create fake prize surface

// Create the Surface
surfWidth = 320;
surfHeight = 180;
surfAlpha = 1;
prizeSurf = surface_create(surfWidth,surfHeight);

// Create the memory buffer (so we can create a copy of our surface)
prizeSurfBuff = buffer_create(surfWidth*surfHeight*4,buffer_fixed,1);

// Render Surface
surface_set_target(prizeSurf);
draw_clear_alpha(0,0);

// Draw Prizes
repeat(prizeNum*2) {
	var _x = irandom_range(spawnMinX,spawnMaxX);
	var _img = irandom(sprite_get_number(spr_CM_Prize)-1);
	draw_sprite_ext(spr_CM_Prize,_img,_x,spawnY+irandom(16),1,1,irandom(360),c_white,1);
}

surface_reset_target();

// Copy Surface to buffer
buffer_get_surface(prizeSurfBuff,prizeSurf,buffer_surface_copy,0,0);
depth = -1;