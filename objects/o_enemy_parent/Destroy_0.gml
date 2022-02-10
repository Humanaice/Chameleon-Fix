/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C01E208
/// @DnDArgument : "code" "$(13_10)if (can_explode_bullets)$(13_10){$(13_10)	for (var i = 0;i < fire_ball_explode_amount;i++)$(13_10)	{$(13_10)		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)$(13_10)		with (_bullet)$(13_10)		{$(13_10)			bullet_team = fireteam.ENEMY;$(13_10)			direction = other.fire_ball_explode_dir;$(13_10)		}$(13_10)		fire_ball_explode_dir += add_fire_ball_explode_dir;$(13_10)	}$(13_10)}"

if (can_explode_bullets)
{
	for (var i = 0;i < fire_ball_explode_amount;i++)
	{
		var _bullet = instance_create_layer(x,y,"Layer_bullet",o_fire_ball)
		with (_bullet)
		{
			bullet_team = fireteam.ENEMY;
			direction = other.fire_ball_explode_dir;
		}
		fire_ball_explode_dir += add_fire_ball_explode_dir;
	}
}