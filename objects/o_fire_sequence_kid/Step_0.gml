/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30323936
/// @DnDArgument : "code" "if (image_alpha > 0)$(13_10){$(13_10)	y += spd;$(13_10)	image_alpha -= 0.025$(13_10)}$(13_10)$(13_10)if (image_alpha <= 0)$(13_10){$(13_10)	instance_destroy()$(13_10)}"
if (image_alpha > 0)
{
	y += spd;
	image_alpha -= 0.025
}

if (image_alpha <= 0)
{
	instance_destroy()
}