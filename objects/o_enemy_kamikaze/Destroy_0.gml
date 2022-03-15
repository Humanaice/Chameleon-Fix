/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7522225B
/// @DnDArgument : "code" "var _item = irandom(100)$(13_10)var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]$(13_10)$(13_10)if (_item <= 40)$(13_10){$(13_10)	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])$(13_10)}"
var _item = irandom(100)
var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]

if (_item <= 40)
{
	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])
}