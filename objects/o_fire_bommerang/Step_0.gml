/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 208521AC
/// @DnDArgument : "code" "_position = path_position;$(13_10)image_angle += image_angle_random$(13_10)direction = bullet_angle$(13_10)speed = bullet_spd$(13_10)$(13_10)$(13_10)if (path_current == pth_bommerang_dna) or (path_current == pth_bommerang_dna_left)$(13_10){$(13_10)	if (path_position == 1)$(13_10)	{$(13_10)		path_check = path_start(path_current,bullet_spd_dna,path_current_endaction,false)$(13_10)	}$(13_10)}"
_position = path_position;
image_angle += image_angle_random
direction = bullet_angle
speed = bullet_spd


if (path_current == pth_bommerang_dna) or (path_current == pth_bommerang_dna_left)
{
	if (path_position == 1)
	{
		path_check = path_start(path_current,bullet_spd_dna,path_current_endaction,false)
	}
}