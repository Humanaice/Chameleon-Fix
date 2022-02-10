/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 753A7167
/// @DnDArgument : "var" "bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ENEMY"
if(!(bullet_team == fireteam.ENEMY))
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1
	/// @DnDHash : 6702F920
	/// @DnDParent : 753A7167
	/// @DnDArgument : "sound" "sf_laser_explosion"
	/// @DnDArgument : "volume" "2"
	/// @DnDSaveInfo : "sound" "sf_laser_explosion"
	audio_sound_gain(sf_laser_explosion, 2, 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 2136958C
	/// @DnDParent : 753A7167
	/// @DnDArgument : "soundid" "sf_laser_explosion"
	/// @DnDSaveInfo : "soundid" "sf_laser_explosion"
	audio_play_sound(sf_laser_explosion, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 45F54E59
	/// @DnDParent : 753A7167
	/// @DnDArgument : "xpos" "other.x"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "o_explosion"
	/// @DnDArgument : "layer" ""Layer_effects""
	/// @DnDSaveInfo : "objectid" "o_explosion"
	instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 350136A5
	/// @DnDApplyTo : other
	/// @DnDParent : 753A7167
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "can_explode_bullets"
	with(other) {
	can_explode_bullets = false;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2FEAAAD0
	/// @DnDApplyTo : other
	/// @DnDParent : 753A7167
	with(other) instance_destroy();
}