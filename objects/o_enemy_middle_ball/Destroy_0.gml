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
/// @DnDArgument : "code" "var _item = irandom(100)$(13_10)var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]$(13_10)$(13_10)if (_item <= 40)$(13_10){$(13_10)	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])$(13_10)}$(13_10)$(13_10)if (instance_exists(_inst))$(13_10){$(13_10)	_inst.time_active = 0;$(13_10)}$(13_10)$(13_10)$(13_10)if (can_explode_bullets)$(13_10){$(13_10)	var _instexplosion = instance_create_layer(x,y,"Layer_bullet",o_fire_explosion_shock)$(13_10)	with (_instexplosion)$(13_10)	{$(13_10)		bullet_team = fireteam.ENEMY;$(13_10)	}$(13_10)	$(13_10)}"
var _item = irandom(100)
var _upgrades = [o_upgrade,o_upgrade_get_shield,o_upgrade_change_bullet,o_upgrade_health]

if (_item <= 40)
{
	instance_create_layer(x,y,"Layer_upgrade",_upgrades[irandom(3)])
}

if (instance_exists(_inst))
{
	_inst.time_active = 0;
}


if (can_explode_bullets)
{
	var _instexplosion = instance_create_layer(x,y,"Layer_bullet",o_fire_explosion_shock)
	with (_instexplosion)
	{
		bullet_team = fireteam.ENEMY;
	}
	
}