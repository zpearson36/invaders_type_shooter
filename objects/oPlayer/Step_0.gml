/// @description Insert description here
// You can write your code in this editor
if(global.move_left) {xspd = -1 * SPD}
if(global.move_right){xspd = SPD}
x += xspd

if(global.move_action)
{
	instance_create_layer(x, y - (sprite_height / 2) - (sprite_get_height(sShot) / 2) - 1, layer, oShot)
}