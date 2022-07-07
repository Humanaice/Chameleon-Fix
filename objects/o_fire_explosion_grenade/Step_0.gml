/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74588212
/// @DnDArgument : "code" "var bouncing = 0.1;$(13_10)direction = bullet_angle;$(13_10)//image_angle += 5;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (y <= (initial_y + limit_y)) $(13_10)	{$(13_10)		speed += -0.2$(13_10)		bouncing +=0.2$(13_10)		image_speed += 1;$(13_10)		if (speed <= 3)$(13_10)		{$(13_10)			instance_destroy()$(13_10)		}$(13_10)	} else {$(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	if (y >= (initial_y + -limit_y)) $(13_10)	{$(13_10)		speed += -0.2$(13_10)		bouncing +=0.2$(13_10)		image_speed += 1;$(13_10)		if (speed <= 3)$(13_10)		{$(13_10)			instance_destroy()$(13_10)		}$(13_10)	} else {$(13_10)		speed = bullet_spd;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);"
var bouncing = 0.1;
direction = bullet_angle;
//image_angle += 5;
if (bullet_team == fireteam.ALLY)
{
	if (y <= (initial_y + limit_y)) 
	{
		speed += -0.2
		bouncing +=0.2
		image_speed += 1;
		if (speed <= 3)
		{
			instance_destroy()
		}
	} else {
		speed = bullet_spd;
	}
} else if (bullet_team == fireteam.ENEMY)
{
	if (y >= (initial_y + -limit_y)) 
	{
		speed += -0.2
		bouncing +=0.2
		image_speed += 1;
		if (speed <= 3)
		{
			instance_destroy()
		}
	} else {
		speed = bullet_spd;
	}
}


image_xscale = random_range(scale - bouncing,scale + bouncing);
image_yscale = random_range(scale - bouncing,scale + bouncing);