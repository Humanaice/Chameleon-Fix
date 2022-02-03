/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0B0F624D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_overall"
function scr_player_overall() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 565DC8B3
	/// @DnDComment : Player Inputs$(13_10)Initial movement temp vribles$(13_10)Normal/Diagonal movements
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "//Scripts$(13_10)$(13_10)script_execute(scr_get_input)$(13_10)$(13_10)//getting inputs$(13_10)var dhspeed = 0;$(13_10)var dvspeed = 0;$(13_10)var keyhdirection = rightkey - leftkey;$(13_10)var keyvdirection  = downkey - upkey;$(13_10)$(13_10)if (gphmove != 0) or (gpvmove != 0) $(13_10){$(13_10)	dhspeed = sign(gphmove);$(13_10)	dvspeed = sign(gpvmove);$(13_10)}$(13_10)if (keyhdirection != 0) or (keyvdirection != 0) $(13_10){$(13_10)	dhspeed = sign(keyhdirection);$(13_10)	dvspeed = sign(keyvdirection);$(13_10)}$(13_10)$(13_10)//Movement$(13_10)$(13_10)hspd = dhspeed * spd$(13_10)vspd = dvspeed * spd$(13_10)$(13_10)//Diagonal Movement$(13_10)$(13_10)if (dhspeed != 0) and (dvspeed != 0) $(13_10){$(13_10)	spd = dagspd;$(13_10)} else $(13_10){$(13_10)	spd = walkspd;$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)"
	//Scripts
	
	script_execute(scr_get_input)
	
	//getting inputs
	var dhspeed = 0;
	var dvspeed = 0;
	var keyhdirection = rightkey - leftkey;
	var keyvdirection  = downkey - upkey;
	
	if (gphmove != 0) or (gpvmove != 0) 
	{
		dhspeed = sign(gphmove);
		dvspeed = sign(gpvmove);
	}
	if (keyhdirection != 0) or (keyvdirection != 0) 
	{
		dhspeed = sign(keyhdirection);
		dvspeed = sign(keyvdirection);
	}
	
	//Movement
	
	hspd = dhspeed * spd
	vspd = dvspeed * spd
	
	//Diagonal Movement
	
	if (dhspeed != 0) and (dvspeed != 0) 
	{
		spd = dagspd;
	} else 
	{
		spd = walkspd;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3866E8D8
	/// @DnDComment : Player Dash
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "//Dash$(13_10)$(13_10)if( hspd != 0 || vspd != 0 ) // Check that we're moving, and if so, then check for dash$(13_10){ $(13_10)	if ( can_dash && !dashing) //Check if we can dash and is not dashing already$(13_10)	{ $(13_10)		if( dash && dashingSteps <= 0) // If player pushes Dash while NOT dashing and CAN dash$(13_10)		{$(13_10)			dashingSteps = dashMaxDuration; // Then for the next 5 steps, moveSpeed will be increased$(13_10)		}$(13_10)	}$(13_10)}$(13_10)// If we're dashing, then add more speed!$(13_10)if( dashingSteps > 0 ) $(13_10){$(13_10)	hspd += dashspd * dhspeed;$(13_10)	vspd += dashspd * dvspeed;$(13_10)	dashing = true; //we are dashing$(13_10)	dashingSteps--; // Decreases dashingSteps each step until it's 0$(13_10)}$(13_10)$(13_10)if (dashing) //while dashing we can not dash and we set the timer to our next dash$(13_10){ $(13_10)	can_dash = false;$(13_10)	dash_cool = 30;$(13_10)}$(13_10)$(13_10)if ( dashingSteps <= 0 ) //when the dash stops...$(13_10){ $(13_10)	dashing = false;$(13_10)}$(13_10)$(13_10)if (!can_dash) // if we cannot dash,then we decress the timer and...$(13_10){ $(13_10)	dash_cool--;$(13_10)	if (dash_cool <= 0) //when the timer hits or is below 0 then we can dash again$(13_10)	{ $(13_10)		can_dash = true;$(13_10)	}$(13_10)}"
	//Dash
	
	if( hspd != 0 || vspd != 0 ) // Check that we're moving, and if so, then check for dash
	{ 
		if ( can_dash && !dashing) //Check if we can dash and is not dashing already
		{ 
			if( dash && dashingSteps <= 0) // If player pushes Dash while NOT dashing and CAN dash
			{
				dashingSteps = dashMaxDuration; // Then for the next 5 steps, moveSpeed will be increased
			}
		}
	}
	// If we're dashing, then add more speed!
	if( dashingSteps > 0 ) 
	{
		hspd += dashspd * dhspeed;
		vspd += dashspd * dvspeed;
		dashing = true; //we are dashing
		dashingSteps--; // Decreases dashingSteps each step until it's 0
	}
	
	if (dashing) //while dashing we can not dash and we set the timer to our next dash
	{ 
		can_dash = false;
		dash_cool = 30;
	}
	
	if ( dashingSteps <= 0 ) //when the dash stops...
	{ 
		dashing = false;
	}
	
	if (!can_dash) // if we cannot dash,then we decress the timer and...
	{ 
		dash_cool--;
		if (dash_cool <= 0) //when the timer hits or is below 0 then we can dash again
		{ 
			can_dash = true;
		}
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 265E7424
	/// @DnDComment : Player wall collision and$(13_10)final Movements
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "// Collisions$(13_10)// HORIZONTAL collision$(13_10)$(13_10)if (place_meeting(x+hspd,y,o_wall))  // check if a theoretical move to either left or right collides with the wall$(13_10){$(13_10)	var collision = false; // if so then right now we dont know if the are colliding so collide is false$(13_10)	while (collision == false) $(13_10)	{$(13_10)		if (!place_meeting(x+sign(hspd),y,o_wall))  // check if  there not is a space between them of 1$(13_10)		{$(13_10)			x += sign(hspd);  //if there is not then move so there is $(13_10)		} else  // and if there is not the space then$(13_10)		{$(13_10)			collision = true;$(13_10)			hspd = 0; // and stop the player from moving$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//VERTICAL collision$(13_10)if (place_meeting(x,y+vspd,o_wall)) $(13_10){$(13_10)	var collision = false;$(13_10)	while (collision == false) $(13_10)	{$(13_10)		if (!place_meeting(x,y+sign(vspd),o_wall)) $(13_10)		{$(13_10)			y += sign(vspd);   $(13_10)		} else $(13_10)		{$(13_10)			collision = true;$(13_10)			vspd = 0;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)//Final moves the player$(13_10)x += hspd; $(13_10)y += vspd;"
	// Collisions
	// HORIZONTAL collision
	
	if (place_meeting(x+hspd,y,o_wall))  // check if a theoretical move to either left or right collides with the wall
	{
		var collision = false; // if so then right now we dont know if the are colliding so collide is false
		while (collision == false) 
		{
			if (!place_meeting(x+sign(hspd),y,o_wall))  // check if  there not is a space between them of 1
			{
				x += sign(hspd);  //if there is not then move so there is 
			} else  // and if there is not the space then
			{
				collision = true;
				hspd = 0; // and stop the player from moving
			}
		}
	}
	
	//VERTICAL collision
	if (place_meeting(x,y+vspd,o_wall)) 
	{
		var collision = false;
		while (collision == false) 
		{
			if (!place_meeting(x,y+sign(vspd),o_wall)) 
			{
				y += sign(vspd);   
			} else 
			{
				collision = true;
				vspd = 0;
			}
		}
	}
	
	//Final moves the player
	x += hspd; 
	y += vspd;

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 188652F5
	/// @DnDComment : Hp
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "// HP$(13_10)$(13_10)if (hpcooldown > 0) $(13_10){$(13_10)	hpcooldown --;$(13_10)}$(13_10)$(13_10)if (hpcooldown <= 0) $(13_10){$(13_10)	player_damaged = false;$(13_10)}"
	// HP
	
	if (hpcooldown > 0) 
	{
		hpcooldown --;
	}
	
	if (hpcooldown <= 0) 
	{
		player_damaged = false;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 290BBA86
	/// @DnDComment : States$(13_10)
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "// Checking States$(13_10)if (dashing) $(13_10){$(13_10)	state = playerstate.DASHING;$(13_10)} else if (!hspd = 0) or (!vspd = 0) $(13_10){$(13_10)	state = playerstate.MOVING;$(13_10)} else if (hspd = 0) or (vspd = 0) $(13_10){$(13_10)	state = playerstate.IDLE;$(13_10)}$(13_10)if (hpcurrent == 0) $(13_10){$(13_10)	state = playerstate.DEAD;$(13_10)}"
	// Checking States
	if (dashing) 
	{
		state = playerstate.DASHING;
	} else if (!hspd = 0) or (!vspd = 0) 
	{
		state = playerstate.MOVING;
	} else if (hspd = 0) or (vspd = 0) 
	{
		state = playerstate.IDLE;
	}
	if (hpcurrent == 0) 
	{
		state = playerstate.DEAD;
	}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7856D4D0
	/// @DnDComment : Player fire
	/// @DnDParent : 0B0F624D
	/// @DnDArgument : "code" "//Player fire$(13_10)$(13_10)if (playerfire) $(13_10){$(13_10)	if (player_fire_cool <= 0) $(13_10)	{$(13_10)		if (current_player_bullet_type == firetype.STRAIGHT) $(13_10)		{$(13_10)			if (current_upgrade_bullet == 0) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_straight);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)				}$(13_10)				player_fire_cool = player_fire_short_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x-10,bbox_top,"Layer_bullet",o_fire_straight);$(13_10)				var _inst = instance_create_layer(x+10,bbox_top,"Layer_bullet",o_fire_straight);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)				}$(13_10)				player_fire_cool = player_fire_short_cool;$(13_10)			}$(13_10)			$(13_10)		}$(13_10)		if (current_player_bullet_type == firetype.BALL) $(13_10)		{$(13_10)			if (current_upgrade_bullet == 0) $(13_10)			{$(13_10)				var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ball);$(13_10)				with(_inst) $(13_10)				{$(13_10)					bullet_team = fireteam.ALLY;$(13_10)					ball_type=o_Player.current_upgrade_bullet$(13_10)				}$(13_10)				player_fire_cool = player_fire_short_cool;$(13_10)			}$(13_10)			if (current_upgrade_bullet == 1) $(13_10)			{$(13_10)				//https://www.reddit.com/r/gamemaker/comments/9tvy3w/gms2_help_with_triple_shot_weapon/$(13_10)				var bullet_ball_direction_var = 90 - (bullet_amont-1) * (angulo_tiro_atual/2);$(13_10)				for (var i = 0;i < bullet_amont; ++i) $(13_10)				{$(13_10)					var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ball);$(13_10)					with(_inst) $(13_10)					{$(13_10)						motion_add(bullet_ball_direction_var + (o_Player.angulo_tiro_atual * i),bullet_ball_spd)$(13_10)						bullet_team = fireteam.ALLY;$(13_10)						ball_type=o_Player.current_upgrade_bullet$(13_10)					}$(13_10)					player_fire_cool = player_fire_long_cool;$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)		$(13_10)	}$(13_10)}$(13_10)$(13_10)if (player_fire_cool > 0) $(13_10){$(13_10)	player_fire_cool --;$(13_10)}"
	//Player fire
	
	if (playerfire) 
	{
		if (player_fire_cool <= 0) 
		{
			if (current_player_bullet_type == firetype.STRAIGHT) 
			{
				if (current_upgrade_bullet == 0) 
				{
					var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_straight);
					with(_inst) 
					{
						bullet_team = fireteam.ALLY;
					}
					player_fire_cool = player_fire_short_cool;
				}
				if (current_upgrade_bullet == 1) 
				{
					var _inst = instance_create_layer(x-10,bbox_top,"Layer_bullet",o_fire_straight);
					var _inst = instance_create_layer(x+10,bbox_top,"Layer_bullet",o_fire_straight);
					with(_inst) 
					{
						bullet_team = fireteam.ALLY;
					}
					player_fire_cool = player_fire_short_cool;
				}
				
			}
			if (current_player_bullet_type == firetype.BALL) 
			{
				if (current_upgrade_bullet == 0) 
				{
					var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ball);
					with(_inst) 
					{
						bullet_team = fireteam.ALLY;
						ball_type=o_Player.current_upgrade_bullet
					}
					player_fire_cool = player_fire_short_cool;
				}
				if (current_upgrade_bullet == 1) 
				{
					//https://www.reddit.com/r/gamemaker/comments/9tvy3w/gms2_help_with_triple_shot_weapon/
					var bullet_ball_direction_var = 90 - (bullet_amont-1) * (angulo_tiro_atual/2);
					for (var i = 0;i < bullet_amont; ++i) 
					{
						var _inst = instance_create_layer(x,bbox_top,"Layer_bullet",o_fire_ball);
						with(_inst) 
						{
							motion_add(bullet_ball_direction_var + (o_Player.angulo_tiro_atual * i),bullet_ball_spd)
							bullet_team = fireteam.ALLY;
							ball_type=o_Player.current_upgrade_bullet
						}
						player_fire_cool = player_fire_long_cool;
					}
				}
			}
			
		}
	}
	
	if (player_fire_cool > 0) 
	{
		player_fire_cool --;
	}
}