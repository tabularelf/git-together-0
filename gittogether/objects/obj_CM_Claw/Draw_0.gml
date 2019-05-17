/// @description Draw Claw
var _scale = 1+(z*.005);
//draw_sprite_stretched(spr_CM_ClawExt,0,x-4,0,8,y);
for(var i = 0; i < y; i+=2) {
	draw_sprite_ext(spr_CM_ClawExt,0,x,i, _scale, _scale, image_angle, c_white, image_alpha);
}
draw_sprite_ext(sprite_index, image_index, x, y, /*1, 1,*/ _scale, _scale, image_angle, c_white, image_alpha);