/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1EC3B1FA
/// @DnDArgument : "code" "bullet_team = 0;$(13_10)facing = 0;$(13_10)limit_short_y = 10$(13_10)limit_long_y = 30$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	facing = -1;$(13_10)} else$(13_10){$(13_10)	facing = 1;$(13_10)}$(13_10)$(13_10)spd = 1 * facing;$(13_10)vspd = 1;$(13_10)distance = -12 ;$(13_10)$(13_10)going_down_relative = false;$(13_10)check = false;$(13_10)image_angle_random = choose(-10,10)$(13_10)$(13_10)$(13_10)"
bullet_team = 0;
facing = 0;
limit_short_y = 10
limit_long_y = 30

if (bullet_team == fireteam.ALLY)
{
	facing = -1;
} else
{
	facing = 1;
}

spd = 1 * facing;
vspd = 1;
distance = -12 ;

going_down_relative = false;
check = false;
image_angle_random = choose(-10,10)