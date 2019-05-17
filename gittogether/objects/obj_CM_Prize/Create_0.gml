/// @description Init Variables

grav = .2;
vsp = 0;
hsp = 0;
grabbed = false;
slipChance = 0;
dir = choose(-4,4);
isGrounded = true;
z = 0;//-irandom(32);
image_speed = 0;
image_index = irandom(sprite_get_number(sprite_index)-1);