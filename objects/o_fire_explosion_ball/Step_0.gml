/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F4405F3
/// @DnDArgument : "code" "speed = bullet_ball_spd;$(13_10)image_angle += 5;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (y <= (initial_y + limit_y)) $(13_10)	{$(13_10)		instance_destroy()$(13_10)	}$(13_10)}"
speed = bullet_ball_spd;
image_angle += 5;
if (bullet_team == fireteam.ALLY)
{
	if (y <= (initial_y + limit_y)) 
	{
		instance_destroy()
	}
}