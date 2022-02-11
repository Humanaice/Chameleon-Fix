/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 1AEC27EE
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 45D3F368
/// @DnDArgument : "x" "40"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_top"
/// @DnDArgument : "caption" ""random""
/// @DnDArgument : "var" "random_generator"
draw_text(x + 40, bbox_top, string("random") + string(random_generator));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1AF1FDE0
/// @DnDArgument : "x" "-40"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_top"
/// @DnDArgument : "caption" ""set""
/// @DnDArgument : "var" "enemy_kamikaze_fire_random"
draw_text(x + -40, bbox_top, string("set") + string(enemy_kamikaze_fire_random));