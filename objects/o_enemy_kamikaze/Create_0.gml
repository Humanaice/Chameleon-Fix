/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 57F72B62
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6914E205
/// @DnDArgument : "code" "center_x=x;$(13_10)limit_short_x = 5;$(13_10)limit_long_x = 10;$(13_10)hspd=5$(13_10)vspd=5;$(13_10)can_move=true;$(13_10)image_xscale = 1;$(13_10)image_yscale = 1;$(13_10)facing_horizontal = 1$(13_10)image_angle = -180;$(13_10)image_speed = 0;$(13_10)image_index = 1;$(13_10)direction = -90$(13_10)$(13_10)enemy_kamikaze_fire_cool = 0;$(13_10)enemy_kamikaze_fire_random = 10;$(13_10)random_generator = 0;$(13_10)time_to_shoot = 30 $(13_10)_acc = 1$(13_10)$(13_10)//_startpath = pth_enemy_go_down_small$(13_10)//path_start(_startpath,vspd,path_action_stop,false)$(13_10)_inst = 0$(13_10)enemy_spd = 10$(13_10)cool_fire = 120$(13_10)full_cool = 360$(13_10)"
center_x=x;
limit_short_x = 5;
limit_long_x = 10;
hspd=5
vspd=5;
can_move=true;
image_xscale = 1;
image_yscale = 1;
facing_horizontal = 1
image_angle = -180;
image_speed = 0;
image_index = 1;
direction = -90

enemy_kamikaze_fire_cool = 0;
enemy_kamikaze_fire_random = 10;
random_generator = 0;
time_to_shoot = 30 
_acc = 1

//_startpath = pth_enemy_go_down_small
//path_start(_startpath,vspd,path_action_stop,false)
_inst = 0
enemy_spd = 10
cool_fire = 120
full_cool = 360