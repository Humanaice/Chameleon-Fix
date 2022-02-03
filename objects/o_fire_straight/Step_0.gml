/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1BF81C87
/// @DnDArgument : "code" "if (can_move) $(13_10){$(13_10)	if (bullet_team == fireteam.ALLY) $(13_10)	{$(13_10)		direction = o_Player.direction + 90;$(13_10)		speed = bullet_straight_spd;$(13_10)	}$(13_10)}"
if (can_move) 
{
	if (bullet_team == fireteam.ALLY) 
	{
		direction = o_Player.direction + 90;
		speed = bullet_straight_spd;
	}
}