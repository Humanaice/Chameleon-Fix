/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 760FA5AC
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-2"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 663A676F
/// @DnDDisabled : 1
/// @DnDArgument : "code" "var _inst = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_straight);$(13_10)with (_inst)$(13_10){$(13_10)	bullet_team = fireteam.ENEMY;$(13_10)	bullet_preset = firepattern.HOMING;$(13_10)	image_angle = point_direction(x, y, o_Player.x, o_Player.y) - 90; $(13_10)	bullet_angle =  point_direction(x, y, o_Player.x, o_Player.y);$(13_10)	bullet_spd = (bullet_spd/2)$(13_10)} $(13_10)y ++;"