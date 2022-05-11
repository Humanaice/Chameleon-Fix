
image_angle = direction - 90

switch enemy_state
{
	case enemystate.ENTERING:
	{
		if (path_position == 1)
		{
			enemy_state = enemystate.SHOTTING;
		}
		
		break;
	}
	case enemystate.SHOTTING:
	{
		if (cool_fire <= 0)
		{
			_inst = instance_create_layer(x,y,"Layer_bullet",o_fire_ray_laser_red_simple);
			with (_inst)
			{
				bullet_team = fireteam.ENEMY
				enemy_id = other.id
				sprite_bottom = spr_fire_raylaser_bottom_grey
				sprite_index = spr_fire_raylaser_body_grey
				bullet_angle = -90;
				image_angle = -90
				x = other.x
				y = other.y
				raydistance = 0
				stop_firing = false;
				go_with = true
				time_active = 100
				bullet_type = 0
			} 
			enemy_state = enemystate.FLEEING;
		}
		cool_fire -= 1;
		break;
	}
	case enemystate.FLEEING:
	{
		if (!instance_exists(_inst))
		{
			if (!go_at_once)
			{
				path_start(_outpath,15,path_action_stop,false)
				go_at_once = true
			} else 
			{ 
				if (path_position == 1)
				{
					instance_destroy()
				}
			}
		}
		break;
	}
}



