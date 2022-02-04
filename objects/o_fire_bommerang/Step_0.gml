/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 208521AC
/// @DnDArgument : "code" "if (facing == -1)$(13_10){$(13_10)	if (spd <= distance)$(13_10)		{$(13_10)			facing *= -1;$(13_10)		}$(13_10)}$(13_10)spd += vspd;$(13_10)y += spd;$(13_10)"
if (facing == -1)
{
	if (spd <= distance)
		{
			facing *= -1;
		}
}
spd += vspd;
y += spd;