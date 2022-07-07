/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1BF81C87
/// @DnDArgument : "code" "direction = bullet_angle;$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	bullet_angle *= 1;$(13_10)	speed = bullet_spd;$(13_10)} else $(13_10){$(13_10)	if (bullet_preset == firepattern.HOMING)$(13_10)	{$(13_10)		scale = 0.3;$(13_10)		sprite_index = spr_fire_straight_enemy;$(13_10)	}$(13_10)	speed = bullet_spd;$(13_10)}$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)image_angle = bullet_angle -90$(13_10)$(13_10)/*$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)*/$(13_10)$(13_10)"
direction = bullet_angle;
if (bullet_team == fireteam.ALLY)
{
	bullet_angle *= 1;
	speed = bullet_spd;
} else 
{
	if (bullet_preset == firepattern.HOMING)
	{
		scale = 0.3;
		sprite_index = spr_fire_straight_enemy;
	}
	speed = bullet_spd;
}
image_xscale = scale;
image_yscale = scale;
image_angle = bullet_angle -90

/*
var bouncing = 0.1;
image_xscale = random_range(scale - bouncing,scale + bouncing);
image_yscale = random_range(scale - bouncing,scale + bouncing);
*/

/**/