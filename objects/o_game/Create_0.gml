/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07EB8922
/// @DnDArgument : "code" "//States$(13_10)$(13_10)enum playerstate {$(13_10)	IDLE,$(13_10)	MOVING,$(13_10)	DASHING,$(13_10)	DEAD,$(13_10)}$(13_10)$(13_10)enum firetype {$(13_10)	STRAIGHT,$(13_10)	BALL,$(13_10)	DNA,$(13_10)	RAYBEAM,$(13_10)	BOMERANG,$(13_10)	ASTEROID,$(13_10)}$(13_10)$(13_10)enum fireteam {$(13_10)	ALLY,$(13_10)	ENEMY,$(13_10)	NOONE,$(13_10)}$(13_10)$(13_10)//Enemy creation varibles$(13_10)enemy_preset_1_spawn_cool = 0;"
//States

enum playerstate {
	IDLE,
	MOVING,
	DASHING,
	DEAD,
}

enum firetype {
	STRAIGHT,
	BALL,
	DNA,
	RAYBEAM,
	BOMERANG,
	ASTEROID,
}

enum fireteam {
	ALLY,
	ENEMY,
	NOONE,
}

//Enemy creation varibles
enemy_preset_1_spawn_cool = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 27390B90
/// @DnDArgument : "code" "clock_initial = 0$(13_10)global.clock = 0$(13_10)enemy_kamikaze_clock = 0$(13_10)enemys_to_create = 4"
clock_initial = 0
global.clock = 0
enemy_kamikaze_clock = 0
enemys_to_create = 4