/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4C6D618C
draw_self();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 790FAC36
/// @DnDArgument : "code" "$(13_10)$(13_10)draw_set_colour($FFFFFFFF & $ffffff);$(13_10)var l0F6CA152_0=($FFFFFFFF >> 24);$(13_10)draw_set_alpha(l0F6CA152_0 / $ff);$(13_10)$(13_10)draw_set_font(Font1);$(13_10)$(13_10)$(13_10)draw_text(20, 210, string("vspd") + string(vspd))$(13_10)draw_text(20, 240, string("spd") + string(spd))$(13_10)draw_text(20, 280, string("facing") + string(facing))$(13_10)$(13_10)$(13_10)"


draw_set_colour($FFFFFFFF & $ffffff);
var l0F6CA152_0=($FFFFFFFF >> 24);
draw_set_alpha(l0F6CA152_0 / $ff);

draw_set_font(Font1);


draw_text(20, 210, string("vspd") + string(vspd))
draw_text(20, 240, string("spd") + string(spd))
draw_text(20, 280, string("facing") + string(facing))