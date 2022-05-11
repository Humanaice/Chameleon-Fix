/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 208521AC
/// @DnDArgument : "code" "_position = path_position;$(13_10)image_angle += image_angle_random$(13_10)$(13_10)speed = -bullet_spd$(13_10)$(13_10)if (bullet_team = fireteam.ALLY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90$(13_10)	$(13_10)} else if (bullet_team = fireteam.ENEMY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90 $(13_10)	bullet_spd = -15$(13_10)	$(13_10)}$(13_10)$(13_10)"
_position = path_position;
image_angle += image_angle_random

speed = -bullet_spd

if (bullet_team = fireteam.ALLY)
{
	path_orientation = bullet_angle - 90
	
} else if (bullet_team = fireteam.ENEMY)
{
	path_orientation = bullet_angle - 90 
	bullet_spd = -15
	
}