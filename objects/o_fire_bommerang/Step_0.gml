/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 208521AC
/// @DnDArgument : "code" "vspd += facing;$(13_10)if (vspd <= -limit_short_y)$(13_10){$(13_10)	vspd += (facing/2)$(13_10)	if (vspd <= -limit_long_y)  $(13_10)	{$(13_10)		facing *= -1;$(13_10)		$(13_10)	} $(13_10)}$(13_10)$(13_10)y += vspd;$(13_10)image_angle += image_angle_random;$(13_10)"
vspd += facing;
if (vspd <= -limit_short_y)
{
	vspd += (facing/2)
	if (vspd <= -limit_long_y)  
	{
		facing *= -1;
		
	} 
}

y += vspd;
image_angle += image_angle_random;