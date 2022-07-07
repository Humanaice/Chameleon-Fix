
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
			_inst = instance_create_layer(x,y,"Layer_bullet",o_fire_ball_triple);
			with (_inst)
			{
				bullet_team = fireteam.ENEMY;
 				bullet_sprite = spr_fire_ball_enemy
				creator = other.id
			} 
			enemy_state = enemystate.FLEEING;
		}
		cool_fire -= 1;
		break;
	}
	case enemystate.FLEEING:
	{
		if (time_to_move <= 0)
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
		time_to_move --;

	}
}



