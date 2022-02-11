/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FAE14B5
/// @DnDArgument : "code" "hspd = hspd + facing_horizontal;$(13_10)if (hspd >= limit_short_x) or (hspd <= -limit_short_x)$(13_10){$(13_10)	hspd = hspd + (facing_horizontal/2)$(13_10)	if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  $(13_10)	{$(13_10)		facing_horizontal *= -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)y += vspd;$(13_10)x += hspd;$(13_10)$(13_10)$(13_10)if (enemy_kamikaze_fire_cool <=0)$(13_10){$(13_10)	if (enemy_kamikaze_fire_random <= random_generator)$(13_10)	{$(13_10)		var _fire = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_ball);$(13_10)		with (_fire)$(13_10)		{$(13_10)			bullet_team = fireteam.ENEMY;$(13_10)			direction = point_direction(x, y, o_Player.x, o_Player.y);$(13_10)		}$(13_10)		enemy_kamikaze_fire_cool = 20;$(13_10)	}$(13_10)}$(13_10)enemy_kamikaze_fire_cool -= 1;$(13_10)random_generator = random(20);"
hspd = hspd + facing_horizontal;
if (hspd >= limit_short_x) or (hspd <= -limit_short_x)
{
	hspd = hspd + (facing_horizontal/2)
	if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  
	{
		facing_horizontal *= -1;
	}
}

y += vspd;
x += hspd;


if (enemy_kamikaze_fire_cool <=0)
{
	if (enemy_kamikaze_fire_random <= random_generator)
	{
		var _fire = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_ball);
		with (_fire)
		{
			bullet_team = fireteam.ENEMY;
			direction = point_direction(x, y, o_Player.x, o_Player.y);
		}
		enemy_kamikaze_fire_cool = 20;
	}
}
enemy_kamikaze_fire_cool -= 1;
random_generator = random(20);