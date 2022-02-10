/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 091B85D3
/// @DnDArgument : "code" "if (can_move) $(13_10){$(13_10)	if (bullet_team == fireteam.ALLY)$(13_10)	{$(13_10)		image_angle += 5;$(13_10)	}$(13_10)	if (bullet_team == fireteam.ENEMY)$(13_10)	{$(13_10)		speed = bullet_ball_spd;$(13_10)		image_angle += 5;$(13_10)	}$(13_10)}$(13_10)"
if (can_move) 
{
	if (bullet_team == fireteam.ALLY)
	{
		image_angle += 5;
	}
	if (bullet_team == fireteam.ENEMY)
	{
		speed = bullet_ball_spd;
		image_angle += 5;
	}
}