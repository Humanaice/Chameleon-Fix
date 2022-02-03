/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 091B85D3
/// @DnDArgument : "code" "if (can_move) $(13_10){$(13_10)	if (ball_type == 0) $(13_10)	{$(13_10)		direction = o_Player.direction + 90;$(13_10)		speed = bullet_ball_spd$(13_10)		image_angle += 5;$(13_10)	}$(13_10)	if (ball_type == 1) $(13_10)	{$(13_10)		image_angle += 5;$(13_10)	}$(13_10)	$(13_10)}$(13_10)"
if (can_move) 
{
	if (ball_type == 0) 
	{
		direction = o_Player.direction + 90;
		speed = bullet_ball_spd
		image_angle += 5;
	}
	if (ball_type == 1) 
	{
		image_angle += 5;
	}
	
}