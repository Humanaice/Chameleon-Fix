/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 5DA8DA41
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56AEAAFC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)enemy_id = id$(13_10)enemy_state = enemystate.ENTERING$(13_10)$(13_10)enemy_direction = -90$(13_10)direction = enemy_direction$(13_10)enemy_vspd = 5$(13_10)enemy_hspd = 1$(13_10)infy_path = false$(13_10)infy_path_choose = pth_enemy_diamond$(13_10)can_start_path = false$(13_10)$(13_10)fire_type = 0$(13_10)//enemy_fire_type = firetype.HOMING$(13_10)enemy_fire_type = irandom(firetype.TOTAL -1)$(13_10)script_execute(scr_enemy_type)$(13_10)$(13_10)//fire_type = o_fire_dna_creator$(13_10)shoot_once = false$(13_10)can_shoot = true$(13_10)_inst = 0$(13_10)cool_fire = 60$(13_10)cooldown = 240$(13_10)$(13_10)//Free flow = true + two_paths = true --> enter with path and continuos on - Light speed$(13_10)//Free flow = false + two_paths = true --> enter with path leaves with path - Come and go$(13_10)//Free flow = true + two_paths = false --> enter with free flow and continuos on - Tresspassing$(13_10)//Free flow = false + two_paths = false --> enter with preformed path and never stops - Planed$(13_10)$(13_10)two_paths = true$(13_10)free_flow = true   $(13_10)//start in path = false,if true free flows$(13_10)_startpath = pth_enemy_wiblywobly$(13_10)shooting_path = pth_enemy_diamond$(13_10)can_shooting_path = true$(13_10)_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)$(13_10)_absolute = true$(13_10)$(13_10)path_start(_startpath,10,path_action_stop,_absolute)$(13_10)$(13_10)go_at_once = false$(13_10)time_to_move = 60$(13_10)$(13_10)$(13_10)image_speed = 0$(13_10)image_angle = enemy_direction + 90$(13_10)$(13_10)function play_shooting_path()$(13_10){$(13_10)	path_start(shooting_path,10,path_action_restart,false)$(13_10)}$(13_10)$(13_10)facing_horizontal = 1$(13_10)mov_function =scr_enemy_dna_down$(13_10)$(13_10)"
/// @description Execute Code

enemy_id = id
enemy_state = enemystate.ENTERING

enemy_direction = -90
direction = enemy_direction
enemy_vspd = 5
enemy_hspd = 1
infy_path = false
infy_path_choose = pth_enemy_diamond
can_start_path = false

fire_type = 0
//enemy_fire_type = firetype.HOMING
enemy_fire_type = irandom(firetype.TOTAL -1)
script_execute(scr_enemy_type)

//fire_type = o_fire_dna_creator
shoot_once = false
can_shoot = true
_inst = 0
cool_fire = 60
cooldown = 240

//Free flow = true + two_paths = true --> enter with path and continuos on - Light speed
//Free flow = false + two_paths = true --> enter with path leaves with path - Come and go
//Free flow = true + two_paths = false --> enter with free flow and continuos on - Tresspassing
//Free flow = false + two_paths = false --> enter with preformed path and never stops - Planed

two_paths = true
free_flow = true   
//start in path = false,if true free flows
_startpath = pth_enemy_wiblywobly
shooting_path = pth_enemy_diamond
can_shooting_path = true
_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)
_absolute = true

path_start(_startpath,10,path_action_stop,_absolute)

go_at_once = false
time_to_move = 60


image_speed = 0
image_angle = enemy_direction + 90

function play_shooting_path()
{
	path_start(shooting_path,10,path_action_restart,false)
}

facing_horizontal = 1
mov_function =scr_enemy_dna_down

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 69866743
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)move_cool = 0$(13_10)/*$(13_10)function move_with_dna_math()$(13_10){$(13_10)	enemy_hspd = 5$(13_10)	enemy_vspd = 5$(13_10)	var facing_horizontal = 1$(13_10)	var limit_short_x =5$(13_10)	var limit_long_x = 10$(13_10)	enemy_hspd = enemy_hspd +  facing_horizontal;$(13_10)	if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)$(13_10)	{$(13_10)		enemy_hspd = enemy_hspd + (facing_horizontal/2)$(13_10)		if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  $(13_10)		{$(13_10)			facing_horizontal *= -1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)*/"
/// @description Execute Code
move_cool = 0
/*
function move_with_dna_math()
{
	enemy_hspd = 5
	enemy_vspd = 5
	var facing_horizontal = 1
	var limit_short_x =5
	var limit_long_x = 10
	enemy_hspd = enemy_hspd +  facing_horizontal;
	if (enemy_hspd >= limit_short_x) or (enemy_hspd <= -limit_short_x)
	{
		enemy_hspd = enemy_hspd + (facing_horizontal/2)
		if (enemy_hspd >= limit_long_x) or (enemy_hspd <= -limit_long_x)  
		{
			facing_horizontal *= -1;
		}
	}
}
*//**/