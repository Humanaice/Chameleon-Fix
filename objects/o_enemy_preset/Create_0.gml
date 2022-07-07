/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56AEAAFC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)enemy_id = id$(13_10)enemy_entering_state = 0$(13_10)enemy_state = enemystate.ENTERING$(13_10)direction = 90$(13_10)$(13_10)enemy_vspd = -2$(13_10)enemy_hspd = 0$(13_10)$(13_10)fire_type = o_fire_explosion_grenade$(13_10)shoot_once = true$(13_10)_inst = 0$(13_10)cool_fire = 60$(13_10)cooldown = 240$(13_10)$(13_10)//Free flow = true + two_paths = true --> enter with path and continuos on - Light speed$(13_10)//Free flow = false + two_paths = true --> enter with path leaves with path - Come and go$(13_10)//Free flow = true + two_paths = false --> enter with free flow and continuos on - Tresspassing$(13_10)//Free flow = false + two_paths = false --> enter with preformed path and never stops - Planed$(13_10)$(13_10)two_paths = true$(13_10)free_flow = true   $(13_10)//start in path = false,if true free flows$(13_10)_startpath = pth_enemy_go_down_middle$(13_10)shooting_path = pth_enemy_diamond$(13_10)can_shooting_path = true$(13_10)_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)$(13_10)$(13_10)$(13_10)if (free_flow) and (two_paths)$(13_10){$(13_10)	enemy_entering_state = enemyenteringstate.LIGHTSPEED$(13_10)}$(13_10)else if (free_flow) and (!two_paths)$(13_10){$(13_10)	enemy_entering_state = enemyenteringstate.TRESPASSING$(13_10)}$(13_10)else if (!free_flow) and (two_paths)$(13_10){$(13_10)	enemy_entering_state = enemyenteringstate.COMEANDGO$(13_10)}$(13_10)else if (!free_flow) and (!two_paths)$(13_10){$(13_10)	enemy_entering_state = enemyenteringstate.PLANNED$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)if (enemy_entering_state != enemyenteringstate.TRESPASSING)$(13_10){$(13_10)	path_start(_startpath,10,path_action_stop,false)$(13_10)}$(13_10)$(13_10)go_at_once = false$(13_10)time_to_move = 60$(13_10)$(13_10)image_index = 0$(13_10)image_speed = 0$(13_10)$(13_10)can_explode_bullets = true;$(13_10)fire_ball_explode_dir = 0;$(13_10)fire_ball_explode_amount = 8;$(13_10)add_fire_ball_explode_dir = (360/fire_ball_explode_amount);$(13_10)$(13_10)function play_shooting_path()$(13_10){$(13_10)	path_start(shooting_path,10,path_action_restart,false)$(13_10)}$(13_10)"
/// @description Execute Code

enemy_id = id
enemy_entering_state = 0
enemy_state = enemystate.ENTERING
direction = 90

enemy_vspd = -2
enemy_hspd = 0

fire_type = o_fire_explosion_grenade
shoot_once = true
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
_startpath = pth_enemy_go_down_middle
shooting_path = pth_enemy_diamond
can_shooting_path = true
_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)


if (free_flow) and (two_paths)
{
	enemy_entering_state = enemyenteringstate.LIGHTSPEED
}
else if (free_flow) and (!two_paths)
{
	enemy_entering_state = enemyenteringstate.TRESPASSING
}
else if (!free_flow) and (two_paths)
{
	enemy_entering_state = enemyenteringstate.COMEANDGO
}
else if (!free_flow) and (!two_paths)
{
	enemy_entering_state = enemyenteringstate.PLANNED
}



if (enemy_entering_state != enemyenteringstate.TRESPASSING)
{
	path_start(_startpath,10,path_action_stop,false)
}

go_at_once = false
time_to_move = 60

image_index = 0
image_speed = 0

can_explode_bullets = true;
fire_ball_explode_dir = 0;
fire_ball_explode_amount = 8;
add_fire_ball_explode_dir = (360/fire_ball_explode_amount);

function play_shooting_path()
{
	path_start(shooting_path,10,path_action_restart,false)
}