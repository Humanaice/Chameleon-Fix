/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2D18DDEF
/// @DnDArgument : "code" "global.clock += 1;$(13_10)if (global.clock >= 10) $(13_10){$(13_10)	enemy_kamikaze_clock +=1;$(13_10)	if (enemy_kamikaze_clock >= 30 and enemys_to_create > 0) $(13_10)		{$(13_10)			instance_create_layer(room_width/2,0,"Layer_enemy",o_enemy_kamikaze);$(13_10)			enemy_kamikaze_clock = 0;$(13_10)			enemys_to_create -= 1;$(13_10)		}$(13_10)}"
global.clock += 1;
if (global.clock >= 10) 
{
	enemy_kamikaze_clock +=1;
	if (enemy_kamikaze_clock >= 30 and enemys_to_create > 0) 
		{
			instance_create_layer(room_width/2,0,"Layer_enemy",o_enemy_kamikaze);
			enemy_kamikaze_clock = 0;
			enemys_to_create -= 1;
		}
}