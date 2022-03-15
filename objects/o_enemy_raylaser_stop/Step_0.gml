



if (path_position >= 1)
{
	if (!fire_it_once)
	{
		if (cool_fire <= 0)
		{
			_inst = instance_create_layer(x,y,"Layer_bullet",o_fire_ray_laser_red_simple);
			with (_inst)
			{
				bullet_team = fireteam.ENEMY
				enemy_id = other.id
				bullet_angle = -90;
				image_angle = -90
				raydistance = 0
				stop_firing = false;
				go_with = true
				sprite_bottom = spr_fire_raylaser_bottom_red
				sprite_index = spr_fire_raylaser_body_red
				time_active = 100
				bullet_type = 0
			} 
			fire_it_once = true
		}
		cool_fire -= 1;
	} else
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
	}
}
image_angle = -180




