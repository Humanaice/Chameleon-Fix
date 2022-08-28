/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4EEF9DD1
/// @DnDArgument : "code" "var _inst = instance_create_layer(x,y,"Layer_bullet",o_fire_dna);$(13_10)var _inst_2 = instance_create_layer(x,y,"Layer_bullet",o_fire_dna);$(13_10)with(_inst)$(13_10){$(13_10)	bullet_team = other.bullet_team;$(13_10)	bullet_angle = other.bullet_angle;$(13_10)	path_current = pth_bommerang_dna;$(13_10)	path_current_endaction = path_action_stop;$(13_10)	bullet_dmg = other.bullet_dmg$(13_10)	$(13_10)	sprite_index = other.bullet_sprite;$(13_10)		if (bullet_team == fireteam.ALLY)$(13_10)	{$(13_10)		path_orientation = bullet_angle$(13_10)		bullet_spd = 20;$(13_10)	$(13_10)	} else if (bullet_team == fireteam.ENEMY)$(13_10)	{$(13_10)		path_orientation = bullet_angle$(13_10)		bullet_spd = 10;$(13_10)	}$(13_10)	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)$(13_10)}$(13_10)with(_inst_2)$(13_10){$(13_10)	bullet_team = other.bullet_team;$(13_10)	bullet_angle = other.bullet_angle;$(13_10)	path_current = pth_bommerang_dna_left;$(13_10)	path_current_endaction = path_action_stop;$(13_10)	bullet_dmg = other.bullet_dmg$(13_10)	$(13_10)	sprite_index = other.bullet_sprite;$(13_10)		if (bullet_team == fireteam.ALLY)$(13_10)	{$(13_10)		path_orientation = bullet_angle$(13_10)		bullet_spd = 20;$(13_10)	$(13_10)	} else if (bullet_team == fireteam.ENEMY)$(13_10)	{$(13_10)		path_orientation = bullet_angle$(13_10)		bullet_spd = 10;$(13_10)	}$(13_10)	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)$(13_10)}$(13_10)$(13_10)instance_destroy()"
var _inst = instance_create_layer(x,y,"Layer_bullet",o_fire_dna);
var _inst_2 = instance_create_layer(x,y,"Layer_bullet",o_fire_dna);
with(_inst)
{
	bullet_team = other.bullet_team;
	bullet_angle = other.bullet_angle;
	path_current = pth_bommerang_dna;
	path_current_endaction = path_action_stop;
	bullet_dmg = other.bullet_dmg
	
	sprite_index = other.bullet_sprite;
		if (bullet_team == fireteam.ALLY)
	{
		path_orientation = bullet_angle
		bullet_spd = 20;
	
	} else if (bullet_team == fireteam.ENEMY)
	{
		path_orientation = bullet_angle
		bullet_spd = 10;
	}
	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)
}
with(_inst_2)
{
	bullet_team = other.bullet_team;
	bullet_angle = other.bullet_angle;
	path_current = pth_bommerang_dna_left;
	path_current_endaction = path_action_stop;
	bullet_dmg = other.bullet_dmg
	
	sprite_index = other.bullet_sprite;
		if (bullet_team == fireteam.ALLY)
	{
		path_orientation = bullet_angle
		bullet_spd = 20;
	
	} else if (bullet_team == fireteam.ENEMY)
	{
		path_orientation = bullet_angle
		bullet_spd = 10;
	}
	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)
}

instance_destroy()