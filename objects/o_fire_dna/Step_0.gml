/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 208521AC
/// @DnDArgument : "code" "_position = path_position;$(13_10)image_angle += image_angle_random$(13_10)direction = bullet_angle$(13_10)speed = bullet_spd;$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90$(13_10)	bullet_spd = 20;$(13_10)	$(13_10)} else if (bullet_team == fireteam.ENEMY)$(13_10){$(13_10)	path_orientation = bullet_angle - 90$(13_10)	bullet_spd = 10;$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)if (path_position == 1)$(13_10){$(13_10)	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)$(13_10)}$(13_10)$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	sprite_index = spr_fire_boomerang_dna;$(13_10)} else $(13_10){$(13_10)	sprite_index = spr_fire_boomerang_enemy;$(13_10)}$(13_10)$(13_10)"
_position = path_position;
image_angle += image_angle_random
direction = bullet_angle
speed = bullet_spd;

if (bullet_team == fireteam.ALLY)
{
	path_orientation = bullet_angle - 90
	bullet_spd = 20;
	
} else if (bullet_team == fireteam.ENEMY)
{
	path_orientation = bullet_angle - 90
	bullet_spd = 10;

}


if (path_position == 1)
{
	path_check = path_start(path_current,bullet_spd,path_current_endaction,false)
}

if (bullet_team == fireteam.ALLY)
{
	sprite_index = spr_fire_boomerang_dna;
} else 
{
	sprite_index = spr_fire_boomerang_enemy;
}