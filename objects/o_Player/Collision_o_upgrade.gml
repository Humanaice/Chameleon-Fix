/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6885188B
/// @DnDArgument : "code" "if (current_upgrade_bullet == 0) {$(13_10)	current_upgrade_bullet=1$(13_10)} else {$(13_10)	current_upgrade_bullet = 0$(13_10)}$(13_10)instance_destroy(other);"
if (current_upgrade_bullet == 0) {
	current_upgrade_bullet=1
} else {
	current_upgrade_bullet = 0
}
instance_destroy(other);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 39EDE24D
/// @DnDArgument : "sound" "snd_pickup_2"
/// @DnDArgument : "volume" "random_range(0.7,1.5)"
/// @DnDSaveInfo : "sound" "snd_pickup_2"
audio_sound_gain(snd_pickup_2, random_range(0.7,1.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 56148358
/// @DnDArgument : "soundid" "snd_pickup_2"
/// @DnDSaveInfo : "soundid" "snd_pickup_2"
audio_play_sound(snd_pickup_2, 0, 0);