/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6885188B
/// @DnDArgument : "code" "if (current_upgrade_bullet == 0) {$(13_10)	current_upgrade_bullet=1$(13_10)} else {$(13_10)	current_upgrade_bullet = 0$(13_10)}$(13_10)instance_destroy(other);"
if (current_upgrade_bullet == 0) {
	current_upgrade_bullet=1
} else {
	current_upgrade_bullet = 0
}
instance_destroy(other);