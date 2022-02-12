/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1BF81C87
/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	bullet_angle *= 1;$(13_10)	speed = bullet_spd;$(13_10)} else $(13_10){$(13_10)	bullet_angle *= -1;$(13_10)	speed = bullet_spd;$(13_10)}$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;"
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
image_xscale = scale;
image_yscale = scale;