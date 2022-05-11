/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FAE14B5
/// @DnDArgument : "code" "/*$(13_10)hspd = hspd + facing_horizontal;$(13_10)if (hspd >= limit_short_x) or (hspd <= -limit_short_x)$(13_10){$(13_10)	hspd = hspd + (facing_horizontal/2)$(13_10)	if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  $(13_10)	{$(13_10)		facing_horizontal *= -1;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)y += vspd;$(13_10)x += hspd;$(13_10)$(13_10)$(13_10)if (enemy_kamikaze_fire_cool <=0)$(13_10){$(13_10)	if (enemy_kamikaze_fire_random <= random_generator)$(13_10)	{$(13_10)		var _fire = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_straight);$(13_10)		with (_fire)$(13_10)		{$(13_10)			bullet_team = fireteam.ENEMY;$(13_10)			bullet_preset = firepattern.HOMING;$(13_10)			image_angle = point_direction(x, y, o_Player.x, o_Player.y) - 90; $(13_10)			bullet_angle =  point_direction(x, y, o_Player.x, o_Player.y);$(13_10)			bullet_spd = (bullet_spd/2)$(13_10)		}$(13_10)		enemy_kamikaze_fire_cool = 100;$(13_10)	}$(13_10)}$(13_10)enemy_kamikaze_fire_cool -= 1;$(13_10)random_generator = random(20);$(13_10)*/$(13_10)$(13_10)switch enemy_state$(13_10){$(13_10)	case enemystate.ENTERING:$(13_10)	{$(13_10)		if (path_position == 1)$(13_10)		{$(13_10)			//path_start(pth_enemy_cycle_LeftToRight,enemy_spd,path_action_restart,false)$(13_10)			enemy_state = enemystate.SHOTTING;$(13_10)		}$(13_10)		$(13_10)		break;$(13_10)	}$(13_10)	case enemystate.SHOTTING:$(13_10)	{$(13_10)		hspd = hspd + facing_horizontal;$(13_10)		if (hspd >= limit_short_x) or (hspd <= -limit_short_x)$(13_10)		{$(13_10)			hspd = hspd + (facing_horizontal/2)$(13_10)			if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  $(13_10)			{$(13_10)				facing_horizontal *= -1;$(13_10)			}$(13_10)		}$(13_10)$(13_10)		y += vspd;$(13_10)		x += hspd;$(13_10)		$(13_10)		if (cool_fire <= 0)$(13_10)		{$(13_10)			//_inst = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_straight);$(13_10)			//with (_inst)$(13_10)			//{$(13_10)			//	bullet_team = fireteam.ENEMY;$(13_10)			//	image_angle = point_direction(x, y, o_Player.x, o_Player.y) - 90; $(13_10)			//	bullet_angle =  point_direction(x, y, o_Player.x, o_Player.y);$(13_10)			//	bullet_spd = (bullet_spd/2)$(13_10)			//} $(13_10)			_inst = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_dna_creator);$(13_10)			with (_inst)$(13_10)			{$(13_10)				bullet_team = fireteam.ENEMY;$(13_10)				bullet_angle = other.direction$(13_10)				bullet_sprite = spr_fire_boomerang_enemy$(13_10)			} $(13_10)			cool_fire = full_cool $(13_10)		} else if (cool_fire > 0)$(13_10)		{$(13_10)			cool_fire -= 1;$(13_10)		}$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)"
/*
hspd = hspd + facing_horizontal;
if (hspd >= limit_short_x) or (hspd <= -limit_short_x)
{
	hspd = hspd + (facing_horizontal/2)
	if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  
	{
		facing_horizontal *= -1;
	}
}


y += vspd;
x += hspd;


if (enemy_kamikaze_fire_cool <=0)
{
	if (enemy_kamikaze_fire_random <= random_generator)
	{
		var _fire = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_straight);
		with (_fire)
		{
			bullet_team = fireteam.ENEMY;
			bullet_preset = firepattern.HOMING;
			image_angle = point_direction(x, y, o_Player.x, o_Player.y) - 90; 
			bullet_angle =  point_direction(x, y, o_Player.x, o_Player.y);
			bullet_spd = (bullet_spd/2)
		}
		enemy_kamikaze_fire_cool = 100;
	}
}
enemy_kamikaze_fire_cool -= 1;
random_generator = random(20);
*/

switch enemy_state
{
	case enemystate.ENTERING:
	{
		if (path_position == 1)
		{
			//path_start(pth_enemy_cycle_LeftToRight,enemy_spd,path_action_restart,false)
			enemy_state = enemystate.SHOTTING;
		}
		
		break;
	}
	case enemystate.SHOTTING:
	{
		hspd = hspd + facing_horizontal;
		if (hspd >= limit_short_x) or (hspd <= -limit_short_x)
		{
			hspd = hspd + (facing_horizontal/2)
			if (hspd >= limit_long_x) or (hspd <= -limit_long_x)  
			{
				facing_horizontal *= -1;
			}
		}

		y += vspd;
		x += hspd;
		
		if (cool_fire <= 0)
		{
			//_inst = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_straight);
			//with (_inst)
			//{
			//	bullet_team = fireteam.ENEMY;
			//	image_angle = point_direction(x, y, o_Player.x, o_Player.y) - 90; 
			//	bullet_angle =  point_direction(x, y, o_Player.x, o_Player.y);
			//	bullet_spd = (bullet_spd/2)
			//} 
			_inst = instance_create_layer(x,bbox_bottom,"Layer_bullet",o_fire_dna_creator);
			with (_inst)
			{
				bullet_team = fireteam.ENEMY;
				bullet_angle = other.direction
				bullet_sprite = spr_fire_boomerang_enemy
			} 
			cool_fire = full_cool 
		} else if (cool_fire > 0)
		{
			cool_fire -= 1;
		}
	}

}

/**/