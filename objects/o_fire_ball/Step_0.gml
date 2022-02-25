/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 091B85D3
/// @DnDArgument : "code" "$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (bullet_preset == firepattern.IN_LINE)$(13_10)	{$(13_10)		direction = bullet_angle; $(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	if (bullet_preset == firepattern.HOMING)$(13_10)	{$(13_10)		direction = bullet_angle;$(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)}$(13_10)var bouncing = 0.1;$(13_10)image_angle += 5;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);"

if (bullet_team == fireteam.ALLY)
{
	if (bullet_preset == firepattern.IN_LINE)
	{
		direction = bullet_angle; 
		speed = bullet_spd;
	}
} else if (bullet_team == fireteam.ENEMY)
{
	if (bullet_preset == firepattern.HOMING)
	{
		direction = bullet_angle;
		speed = bullet_spd;
	}
}
var bouncing = 0.1;
image_angle += 5;
image_xscale = random_range(scale - bouncing,scale + bouncing);
image_yscale = random_range(scale - bouncing,scale + bouncing);