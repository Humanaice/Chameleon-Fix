/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 756D9D08
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_self()$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)"
/// @description Execute Code
draw_self()

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 597FE5D8
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_top - 60"
/// @DnDArgument : "caption" ""enemy_state:""
/// @DnDArgument : "var" "enemy_state"
draw_text(x + 0, bbox_top - 60, string("enemy_state:") + string(enemy_state));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1E48E4E1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_top - 100"
/// @DnDArgument : "caption" ""enemy_entering_state:""
/// @DnDArgument : "var" "enemy_entering_state"
draw_text(x + 0, bbox_top - 100, string("enemy_entering_state:") + string(enemy_entering_state));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 10AE82E6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_top - 140"
/// @DnDArgument : "caption" ""path_position:""
/// @DnDArgument : "var" "path_position"
draw_text(x + 0, bbox_top - 140, string("path_position:") + string(path_position));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5845AFD1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "bbox_bottom+40"
/// @DnDArgument : "caption" ""direction""
/// @DnDArgument : "var" "direction"
draw_text(x + 0, bbox_bottom+40, string("direction") + string(direction));