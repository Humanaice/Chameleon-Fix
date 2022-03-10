/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6885188B
/// @DnDArgument : "code" "if (current_upgrade_bullet == 0) $(13_10){$(13_10)	current_upgrade_bullet=1$(13_10)	player_fire_cool = 0$(13_10)} else if (current_upgrade_bullet == 1)$(13_10){$(13_10)	current_upgrade_bullet = 2$(13_10)	player_fire_cool = 0$(13_10)} else if (current_upgrade_bullet == 2)$(13_10){$(13_10)	current_upgrade_bullet=0;$(13_10)	player_fire_cool = 0$(13_10)}$(13_10)$(13_10)instance_destroy(other);"
if (current_upgrade_bullet == 0) 
{
	current_upgrade_bullet=1
	player_fire_cool = 0
} else if (current_upgrade_bullet == 1)
{
	current_upgrade_bullet = 2
	player_fire_cool = 0
} else if (current_upgrade_bullet == 2)
{
	current_upgrade_bullet=0;
	player_fire_cool = 0
}

instance_destroy(other);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 7CB779A1
/// @DnDArgument : "sound" "snd_pickup_2"
/// @DnDArgument : "volume" "random_range(0.7,1.5)"
/// @DnDSaveInfo : "sound" "snd_pickup_2"
audio_sound_gain(snd_pickup_2, random_range(0.7,1.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 74A5F8FA
/// @DnDArgument : "soundid" "snd_pickup_2"
/// @DnDSaveInfo : "soundid" "snd_pickup_2"
audio_play_sound(snd_pickup_2, 0, 0);