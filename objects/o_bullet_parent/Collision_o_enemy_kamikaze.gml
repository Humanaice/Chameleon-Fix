/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 055DB876
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 7DD04773
/// @DnDArgument : "sound" "sf_laser_explosion"
/// @DnDArgument : "volume" "2"
/// @DnDSaveInfo : "sound" "sf_laser_explosion"
audio_sound_gain(sf_laser_explosion, 2, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 729953C5
/// @DnDArgument : "soundid" "sf_laser_explosion"
/// @DnDSaveInfo : "soundid" "sf_laser_explosion"
audio_play_sound(sf_laser_explosion, 0, 0);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 32E26A58
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "o_explosion"
/// @DnDArgument : "layer" ""Layer_effects""
/// @DnDSaveInfo : "objectid" "o_explosion"
instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0744843F
instance_destroy();