/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FAE14B5
/// @DnDArgument : "code" "hspd = hspd + facing_horizontal;$(13_10)if (hspd >= limit_short_x) or (hspd <= -limit_short_x)$(13_10){$(13_10)	hspd = hspd + (facing_horizontal/2)$(13_10)	if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  $(13_10)	{$(13_10)		facing_horizontal *= -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)y += vspd;$(13_10)x += hspd;"
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