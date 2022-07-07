/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30323936
/// @DnDArgument : "code" "direction = bullet_angle$(13_10)if (image_alpha > 0)$(13_10){$(13_10)	speed = bullet_spd;$(13_10)	image_alpha -= image_alpha_decrease$(13_10)}$(13_10)$(13_10)if (image_alpha <= 0)$(13_10){$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)var bouncing = 0.1;$(13_10)image_xscale = random_range(scale - bouncing,scale + bouncing);$(13_10)image_yscale = random_range(scale - bouncing,scale + bouncing);$(13_10)//image_xscale = scale * 1.2;$(13_10)//image_yscale = scale * 1.5;$(13_10)image_angle = bullet_angle$(13_10)"
direction = bullet_angle
if (image_alpha > 0)
{
	speed = bullet_spd;
	image_alpha -= image_alpha_decrease
}

if (image_alpha <= 0)
{
	instance_destroy()
}

var bouncing = 0.1;
image_xscale = random_range(scale - bouncing,scale + bouncing);
image_yscale = random_range(scale - bouncing,scale + bouncing);
//image_xscale = scale * 1.2;
//image_yscale = scale * 1.5;
image_angle = bullet_angle