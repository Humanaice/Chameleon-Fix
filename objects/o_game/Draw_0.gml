/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0631CFAE
/// @DnDArgument : "code" "if (room == rm_title_screan)$(13_10){$(13_10)	draw_set_font(fnt_title_screan)$(13_10)	draw_set_halign(fa_center)$(13_10)	draw_text(room_width/2,512,"Chamelion Ship")$(13_10)	draw_text(room_width/2,890,"Press Space to Play!")$(13_10)}$(13_10)$(13_10)if (room == rm_level_1)$(13_10){$(13_10)	draw_set_colour($FFFFFFFF & $ffffff);$(13_10)	var l0F6CA152_0=($FFFFFFFF >> 24);$(13_10)	draw_set_alpha(l0F6CA152_0 / $ff);$(13_10)$(13_10)	draw_set_font(Font1);$(13_10)$(13_10)$(13_10)	draw_text(20, 90, string("room ") + string(room_speed));$(13_10)	draw_text(20, 110, string("room ") + string(global.clock));$(13_10)}$(13_10)$(13_10)"
if (room == rm_title_screan)
{
	draw_set_font(fnt_title_screan)
	draw_set_halign(fa_center)
	draw_text(room_width/2,512,"Chamelion Ship")
	draw_text(room_width/2,890,"Press Space to Play!")
}

if (room == rm_level_1)
{
	draw_set_colour($FFFFFFFF & $ffffff);
	var l0F6CA152_0=($FFFFFFFF >> 24);
	draw_set_alpha(l0F6CA152_0 / $ff);

	draw_set_font(Font1);


	draw_text(20, 90, string("room ") + string(room_speed));
	draw_text(20, 110, string("room ") + string(global.clock));
}