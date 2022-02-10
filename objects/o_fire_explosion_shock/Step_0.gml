/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12E604DA
/// @DnDArgument : "code" "$(13_10)image_xscale = scale;$(13_10)image_yscale = scale;$(13_10)scale += add_scale;$(13_10)image_alpha -= decrease_alpha;$(13_10)$(13_10)if (image_alpha <= 0)$(13_10){$(13_10)	instance_destroy()$(13_10)}"

image_xscale = scale;
image_yscale = scale;
scale += add_scale;
image_alpha -= decrease_alpha;

if (image_alpha <= 0)
{
	instance_destroy()
}