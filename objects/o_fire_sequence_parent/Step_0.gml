/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0FC42B56
/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	bullet_angle *= 1;$(13_10)	speed = bullet_spd;$(13_10)} else $(13_10){$(13_10)	bullet_angle *= -1;$(13_10)	speed = bullet_spd;$(13_10)}$(13_10)$(13_10)if (cooldown <= 0)$(13_10){$(13_10)	var _kid = instance_create_layer(x - 5,y,"Layer_bullet",o_fire_sequence_kid)$(13_10)	_kid.bullet_angle = bullet_angle$(13_10)	cooldown = 10;$(13_10)}$(13_10)$(13_10)cooldown -=1;$(13_10)"
direction = bullet_angle;
if (bullet_team == fireteam.ALLY)
{
	bullet_angle *= 1;
	speed = bullet_spd;
} else 
{
	bullet_angle *= -1;
	speed = bullet_spd;
}

if (cooldown <= 0)
{
	var _kid = instance_create_layer(x - 5,y,"Layer_bullet",o_fire_sequence_kid)
	_kid.bullet_angle = bullet_angle
	cooldown = 10;
}

cooldown -=1;