/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 62878F3B
/// @DnDArgument : "code" "$(13_10)Xplayer = o_Player.x$(13_10)Yplayer = o_Player.y$(13_10)if (go_with)$(13_10){$(13_10)	x=Xplayer$(13_10)	y=Yplayer$(13_10)} else$(13_10){$(13_10)	x = x$(13_10)	y = y$(13_10)}$(13_10)//bullet_angle +=1$(13_10)direction = bullet_angle$(13_10)image_angle = direction$(13_10)if (image_index > 9)$(13_10){$(13_10)	image_speed = 0;$(13_10)	image_flicker = true;$(13_10)	$(13_10)}$(13_10)if (image_index > 3)$(13_10){$(13_10)	can_damage_player = true;$(13_10)} else$(13_10){$(13_10)	can_damage_player = false$(13_10)}$(13_10)$(13_10)if (image_flicker)$(13_10){$(13_10)	scale_y = random_range(0.45,0.55)$(13_10)}$(13_10)if (bullet_team == fireteam.ALLY)$(13_10){$(13_10)	if (stop_firing)$(13_10)	{$(13_10)		if (image_index > 3)$(13_10)		{$(13_10)			//o_Player.player_fire_cool = o_Player.player_fire_very_long_cool$(13_10)			image_speed = -1;$(13_10)			if (image_index <= 4)$(13_10)			{$(13_10)				if (o_Player.current_upgrade_bullet == 0)$(13_10)				{$(13_10)					o_Player.player_fire_cool = o_Player.player_fire_medium_cool$(13_10)				}$(13_10)				if (o_Player.current_upgrade_bullet == 2)$(13_10)				{$(13_10)					o_Player.player_fire_cool = o_Player.player_fire_long_cool$(13_10)					$(13_10)					$(13_10)				}$(13_10)				o_Player.can_move = true;$(13_10)				instance_destroy()$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	time_active -= 1;$(13_10)	if (o_Player.current_upgrade_bullet == 0)$(13_10)	{$(13_10)		if (time_active <= 0) or (o_Player.stopplayerfire)$(13_10)		{$(13_10)			stop_firing = true;$(13_10)		}$(13_10)	}else if (o_Player.current_upgrade_bullet == 1)$(13_10)	{$(13_10)		stop_firing = true;$(13_10)	}else if (o_Player.current_upgrade_bullet == 2)$(13_10)	{$(13_10)		with(o_Player)$(13_10)		{$(13_10)			vspd -= 1$(13_10)			if(vspd < -15) vsp = -15;$(13_10)			can_move = false;$(13_10)			can_damage_player = false;$(13_10)		}$(13_10)		if (time_active <= 0)$(13_10)		{$(13_10)			stop_firing = true;$(13_10)			o_Player.can_move = true;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)mask_index = spr_fire_raylaser_collision$(13_10)$(13_10)"

Xplayer = o_Player.x
Yplayer = o_Player.y
if (go_with)
{
	x=Xplayer
	y=Yplayer
} else
{
	x = x
	y = y
}
//bullet_angle +=1
direction = bullet_angle
image_angle = direction
if (image_index > 9)
{
	image_speed = 0;
	image_flicker = true;
	
}
if (image_index > 3)
{
	can_damage_player = true;
} else
{
	can_damage_player = false
}

if (image_flicker)
{
	scale_y = random_range(0.45,0.55)
}
if (bullet_team == fireteam.ALLY)
{
	if (stop_firing)
	{
		if (image_index > 3)
		{
			//o_Player.player_fire_cool = o_Player.player_fire_very_long_cool
			image_speed = -1;
			if (image_index <= 4)
			{
				if (o_Player.current_upgrade_bullet == 0)
				{
					o_Player.player_fire_cool = o_Player.player_fire_medium_cool
				}
				if (o_Player.current_upgrade_bullet == 2)
				{
					o_Player.player_fire_cool = o_Player.player_fire_long_cool
					
					
				}
				o_Player.can_move = true;
				instance_destroy()
			}
		}
	}
	time_active -= 1;
	if (o_Player.current_upgrade_bullet == 0)
	{
		if (time_active <= 0) or (o_Player.stopplayerfire)
		{
			stop_firing = true;
		}
	}else if (o_Player.current_upgrade_bullet == 1)
	{
		stop_firing = true;
	}else if (o_Player.current_upgrade_bullet == 2)
	{
		with(o_Player)
		{
			vspd -= 1
			if(vspd < -15) vsp = -15;
			can_move = false;
			can_damage_player = false;
		}
		if (time_active <= 0)
		{
			stop_firing = true;
			o_Player.can_move = true;
		}
	}
	
}
mask_index = spr_fire_raylaser_collision