/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5ADA1D8C
/// @DnDArgument : "code" "if (bullet_team != fireteam.ALLY) {$(13_10)	if(other.hpcooldown <=0) { $(13_10)		other.hpcurrent --;$(13_10)		other.hpcooldown = 120;$(13_10)		other.player_damaged=true;$(13_10)	}$(13_10)}"
if (bullet_team != fireteam.ALLY) {
	if(other.hpcooldown <=0) { 
		other.hpcurrent --;
		other.hpcooldown = 120;
		other.player_damaged=true;
	}
}