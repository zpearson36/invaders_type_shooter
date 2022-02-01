/// @description Insert description here
// You can write your code in this editor
if(instance_number(oEnemy) == 0)
{
	repeat(num)
	{
	    instance_create_layer(
		    irandom_range(64, room_width - 64),           // x position
			sprite_get_height(sEnemy) * (1 + irandom(6)), // y position
			"Instances",                                  // layer to add instance to
			oEnemy                                        // object type to add
		)
	}
	num += 1
}