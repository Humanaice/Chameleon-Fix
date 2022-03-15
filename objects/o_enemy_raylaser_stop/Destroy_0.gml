/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 521834A9
/// @DnDDisabled : 1
/// @DnDArgument : "xpos" "room_width/2 "
/// @DnDArgument : "ypos" "room_height /2"
/// @DnDArgument : "objectid" "o_fire_explosion_shock"
/// @DnDArgument : "layer" ""Layer_player""
/// @DnDSaveInfo : "objectid" "o_fire_explosion_shock"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BF4454D
/// @DnDArgument : "code" "var _item = irandom(100)$(13_10)var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]$(13_10)$(13_10)if (_item <= 40)$(13_10){$(13_10)	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])$(13_10)}$(13_10)$(13_10)_inst.time_active = 0;"
var _item = irandom(100)
var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]

if (_item <= 40)
{
	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])
}

_inst.time_active = 0;