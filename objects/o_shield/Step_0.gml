/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 17A6FB42
/// @DnDArgument : "code" "angle += 5;;$(13_10)shield_distance += add_shield_distance;$(13_10)$(13_10)if (shield_distance >= 90) or (shield_distance <= 70)$(13_10){$(13_10)	add_shield_distance *= -1;$(13_10)}$(13_10)$(13_10)x = o_Player.x - 20 + lengthdir_x(shield_distance,angle);$(13_10)y = o_Player.y - 20 + lengthdir_y(shield_distance,angle);$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
angle += 5;;
shield_distance += add_shield_distance;

if (shield_distance >= 90) or (shield_distance <= 70)
{
	add_shield_distance *= -1;
}

x = o_Player.x - 20 + lengthdir_x(shield_distance,angle);
y = o_Player.y - 20 + lengthdir_y(shield_distance,angle);