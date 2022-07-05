/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0646B2B2
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4257AF72
/// @DnDArgument : "code" "_startpath = pth_enemy_go_down_small$(13_10)_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)$(13_10)path_start(_startpath,10,path_action_stop,false)$(13_10)$(13_10)image_speed = 0$(13_10)image_index = 0;$(13_10)$(13_10)go_at_once = false$(13_10)_inst = 0$(13_10)cool_fire = 60$(13_10)$(13_10)enemy_state = enemystate.ENTERING$(13_10)$(13_10)$(13_10)"
_startpath = pth_enemy_go_down_small
_outpath = choose(pth_enemy_GoDown,pth_enemy_GoToLeft,pth_enemy_GoToRight)
path_start(_startpath,10,path_action_stop,false)

image_speed = 0
image_index = 0;

go_at_once = false
_inst = 0
cool_fire = 60

enemy_state = enemystate.ENTERING