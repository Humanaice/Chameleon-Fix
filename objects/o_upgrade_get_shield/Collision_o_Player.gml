/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 397E4497
/// @DnDArgument : "code" "if (shield_amount > 0) $(13_10){$(13_10)	var _shield = instance_create_layer(x,y,"Layer_upgrade",o_shield);$(13_10)	shield_amount -= 1;$(13_10)	shield_dir += add_dir;$(13_10)	with (_shield)$(13_10)	{$(13_10)		angle = o_upgrade_get_shield.shield_dir;$(13_10)	}$(13_10)}$(13_10)$(13_10)if (shield_amount <= 0) $(13_10){$(13_10)	instance_destroy()$(13_10)}$(13_10)$(13_10)"
if (shield_amount > 0) 
{
	var _shield = instance_create_layer(x,y,"Layer_upgrade",o_shield);
	shield_amount -= 1;
	shield_dir += add_dir;
	with (_shield)
	{
		angle = o_upgrade_get_shield.shield_dir;
	}
}

if (shield_amount <= 0) 
{
	instance_destroy()
}