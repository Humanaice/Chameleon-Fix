/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23C60F98
/// @DnDArgument : "code" "current_upgrade_bullet = 0$(13_10)if (current_player_bullet_type == firetype.STRAIGHT) {$(13_10)	current_player_bullet_type = firetype.BALL$(13_10)	instance_destroy(other);$(13_10)} else {$(13_10)	current_player_bullet_type = firetype.STRAIGHT$(13_10)	instance_destroy(other);$(13_10)}$(13_10)"
current_upgrade_bullet = 0
if (current_player_bullet_type == firetype.STRAIGHT) {
	current_player_bullet_type = firetype.BALL
	instance_destroy(other);
} else {
	current_player_bullet_type = firetype.STRAIGHT
	instance_destroy(other);
}