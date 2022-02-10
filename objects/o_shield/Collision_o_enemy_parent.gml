/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1C176508
/// @DnDArgument : "xpos" "other.x"
/// @DnDArgument : "ypos" "other.y"
/// @DnDArgument : "objectid" "o_explosion"
/// @DnDArgument : "layer" ""Layer_effects""
/// @DnDSaveInfo : "objectid" "o_explosion"
instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 5B38F902
/// @DnDArgument : "sound" "sf_laser_explosion"
/// @DnDArgument : "volume" "2"
/// @DnDSaveInfo : "sound" "sf_laser_explosion"
audio_sound_gain(sf_laser_explosion, 2, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 058ADADF
/// @DnDArgument : "soundid" "sf_laser_explosion"
/// @DnDSaveInfo : "soundid" "sf_laser_explosion"
audio_play_sound(sf_laser_explosion, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5B010640
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "can_explode_bullets"
with(other) {
can_explode_bullets = false;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 412C15E7
/// @DnDApplyTo : other
with(other) instance_destroy();