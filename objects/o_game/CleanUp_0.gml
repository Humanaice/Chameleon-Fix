/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2EEB4A91
/// @DnDArgument : "code" "//destro dead list$(13_10)if (room == rm_level_1)$(13_10){$(13_10)	ds_list_destroy(o_Player.shield_list);$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//destro dead list
if (room == rm_level_1)
{
	ds_list_destroy(o_Player.shield_list);
}