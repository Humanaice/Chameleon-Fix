/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 23C60F98
/// @DnDArgument : "code" "current_upgrade_bullet = 0$(13_10)if (current_player_bullet_type == firetype.STRAIGHT) {$(13_10)	current_player_bullet_type = firetype.BALL$(13_10)	instance_destroy(other);$(13_10)} else if (current_player_bullet_type == firetype.BALL){$(13_10)	current_player_bullet_type = firetype.SEQUENCE;$(13_10)	instance_destroy(other);$(13_10)} else if (current_player_bullet_type == firetype.SEQUENCE){$(13_10)	current_player_bullet_type = firetype.BOMERANG;$(13_10)	instance_destroy(other);$(13_10)} else if (current_player_bullet_type == firetype.BOMERANG){$(13_10)	current_player_bullet_type = firetype.STRAIGHT;$(13_10)	instance_destroy(other);$(13_10)}$(13_10)"
current_upgrade_bullet = 0
if (current_player_bullet_type == firetype.STRAIGHT) {
	current_player_bullet_type = firetype.BALL
	instance_destroy(other);
} else if (current_player_bullet_type == firetype.BALL){
	current_player_bullet_type = firetype.SEQUENCE;
	instance_destroy(other);
} else if (current_player_bullet_type == firetype.SEQUENCE){
	current_player_bullet_type = firetype.BOMERANG;
	instance_destroy(other);
} else if (current_player_bullet_type == firetype.BOMERANG){
	current_player_bullet_type = firetype.STRAIGHT;
	instance_destroy(other);
}