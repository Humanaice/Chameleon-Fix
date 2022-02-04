/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0FC42B56
/// @DnDArgument : "code" "y += spd;$(13_10)if (cooldown <= 0)$(13_10){$(13_10)	instance_create_layer(x-5,y,"Layer_bullet",o_fire_sequence_kid)$(13_10)	y_create = y;$(13_10)	cooldown = 5;$(13_10)}$(13_10)$(13_10)cooldown -=1;$(13_10)"
y += spd;
if (cooldown <= 0)
{
	instance_create_layer(x-5,y,"Layer_bullet",o_fire_sequence_kid)
	y_create = y;
	cooldown = 5;
}

cooldown -=1;