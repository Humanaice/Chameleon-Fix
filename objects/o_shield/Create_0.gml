/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EA5C7C6
/// @DnDArgument : "code" "//angle = 0;$(13_10)add_angle = 5;$(13_10)bullet_team = fireteam.ALLY;$(13_10)shield_distance = 80;$(13_10)add_shield_distance = 0.7;$(13_10)$(13_10)$(13_10)function die_shield ()$(13_10){$(13_10)	//add_angle = 0$(13_10)	instance_destroy(self)$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
//angle = 0;
add_angle = 5;
bullet_team = fireteam.ALLY;
shield_distance = 80;
add_shield_distance = 0.7;


function die_shield ()
{
	//add_angle = 0
	instance_destroy(self)
}