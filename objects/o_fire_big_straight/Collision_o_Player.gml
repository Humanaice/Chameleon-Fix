/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 05B36F94
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5ADA1D8C
/// @DnDDisabled : 1
/// @DnDArgument : "code" "if (bullet_team != fireteam.ALLY) {$(13_10)	if (other.can_damage_player)$(13_10)	{$(13_10)		if(other.hpcooldown <=0) $(13_10)		{ $(13_10)			with (other)$(13_10)			{$(13_10)				hpcurrent --;$(13_10)				hpcooldown = 120;$(13_10)				player_damaged=true;$(13_10)				flash = 1;$(13_10)			}$(13_10)		}$(13_10)		instance_destroy()$(13_10)	}$(13_10)}"