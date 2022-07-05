/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7CA8D9BB
/// @DnDArgument : "var" "bullet_team"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "fireteam.ENEMY"
if(!(bullet_team == fireteam.ENEMY))
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48A0479C
	/// @DnDApplyTo : other
	/// @DnDParent : 7CA8D9BB
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 17C62A82
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "sound" "sf_laser_explosion"
	/// @DnDArgument : "volume" "2"
	/// @DnDSaveInfo : "sound" "sf_laser_explosion"
	audio_sound_gain(sf_laser_explosion, 2, 0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 3FB52E51
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "soundid" "sf_laser_explosion"
	/// @DnDSaveInfo : "soundid" "sf_laser_explosion"
	audio_play_sound(sf_laser_explosion, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 32FB04E5
	/// @DnDParent : 7CA8D9BB
	/// @DnDArgument : "xpos" "other.x"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "o_explosion"
	/// @DnDArgument : "layer" ""Layer_effects""
	/// @DnDSaveInfo : "objectid" "o_explosion"
	instance_create_layer(other.x, other.y, "Layer_effects", o_explosion);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 578C92F7
	/// @DnDParent : 7CA8D9BB
	instance_destroy();
}