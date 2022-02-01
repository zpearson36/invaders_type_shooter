/// @description Insert description here
// You can write your code in this editor
var shot = instance_create_layer(x, y + (sprite_height / 2) + (sprite_get_height(sShot) / 2) + 1, layer, oShot)
shot.yspd = -shot.yspd
shot.damage = shot_damage
alarm[1] = irandom_range(60, 300)