/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D18DDEF
/// @DnDArgument : "code" "if (room == rm_level_1)$(13_10){$(13_10)	global.clock += 1;$(13_10)	if (global.clock >= 60) $(13_10)	{$(13_10)		enemy_kamikaze_clock +=1;$(13_10)		if (enemy_kamikaze_clock >= 320 and enemys_to_create > 0) $(13_10)			{$(13_10)				instance_create_layer(irandom_range(50,room_width - 50),0,"Layer_enemy",o_enemy_kamikaze);$(13_10)				enemy_kamikaze_clock = 0;$(13_10)				enemys_to_create -= 1;$(13_10)			}$(13_10)	}$(13_10)	if (o_Player.hpcurrent <= 0)$(13_10){$(13_10)	room_goto(rm_game_over)$(13_10)}$(13_10)}$(13_10)$(13_10)"
if (room == rm_level_1)
{
	global.clock += 1;
	if (global.clock >= 60) 
	{
		enemy_kamikaze_clock +=1;
		if (enemy_kamikaze_clock >= 320 and enemys_to_create > 0) 
			{
				instance_create_layer(irandom_range(50,room_width - 50),0,"Layer_enemy",o_enemy_kamikaze);
				enemy_kamikaze_clock = 0;
				enemys_to_create -= 1;
			}
	}
	if (o_Player.hpcurrent <= 0)
{
	room_goto(rm_game_over)
}
}