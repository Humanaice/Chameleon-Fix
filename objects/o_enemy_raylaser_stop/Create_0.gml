/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 0646B2B2
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4257AF72
/// @DnDArgument : "code" "$(13_10)$(13_10)_startpath = pth_enemy_raylaser_above$(13_10)_outpath = pth_enemy_GoToRight$(13_10)path_start(_startpath,10,path_action_stop,false)$(13_10)$(13_10)image_speed = 0$(13_10)$(13_10)go_at_once = false$(13_10)fire_it_once = false$(13_10)_inst = 0$(13_10)cool_fire = 30"


_startpath = pth_enemy_raylaser_above
_outpath = pth_enemy_GoToRight
path_start(_startpath,10,path_action_stop,false)

image_speed = 0

go_at_once = false
fire_it_once = false
_inst = 0
cool_fire = 30