/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07EB8922
/// @DnDArgument : "code" "//States$(13_10)$(13_10)enum playerstate {$(13_10)	IDLE,$(13_10)	MOVING,$(13_10)	DASHING,$(13_10)	DEAD,$(13_10)}$(13_10)$(13_10)enum enemystate	$(13_10){$(13_10)	ENTERING,$(13_10)	SHOTTING,$(13_10)	FLEEING,$(13_10)}$(13_10)$(13_10)enum firetype {$(13_10)	STRAIGHT,$(13_10)	BALL,$(13_10)	BOMERANG,$(13_10)	RAYLASER,$(13_10)}$(13_10)$(13_10)enum fireteam {$(13_10)	ALLY,$(13_10)	ENEMY,$(13_10)	NOONE,$(13_10)}$(13_10)$(13_10)enum firepattern $(13_10){$(13_10)	IN_LINE,$(13_10)	HOMING,$(13_10)	PRESET,$(13_10)}$(13_10)$(13_10)//Enemy creation varibles$(13_10)enemy_preset_1_spawn_cool = 0;"
//States

enum playerstate {
	IDLE,
	MOVING,
	DASHING,
	DEAD,
}

enum enemystate	
{
	ENTERING,
	SHOTTING,
	FLEEING,
}

enum firetype {
	STRAIGHT,
	BALL,
	BOMERANG,
	RAYLASER,
}

enum fireteam {
	ALLY,
	ENEMY,
	NOONE,
}

enum firepattern 
{
	IN_LINE,
	HOMING,
	PRESET,
}

//Enemy creation varibles
enemy_preset_1_spawn_cool = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27390B90
/// @DnDArgument : "code" "clock_initial = 0$(13_10)global.clock = 0$(13_10)enemy_kamikaze_clock = 0$(13_10)enemys_to_create = 10;"
clock_initial = 0
global.clock = 0
enemy_kamikaze_clock = 0
enemys_to_create = 10;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4E5ACEB5
/// @DnDArgument : "soundid" "Anamana_Akira"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Anamana_Akira"
audio_play_sound(Anamana_Akira, 0, 1);