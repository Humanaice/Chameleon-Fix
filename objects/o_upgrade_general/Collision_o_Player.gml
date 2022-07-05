/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01F0B21C
/// @DnDArgument : "code" "if (upgrade_type == firetype.STRAIGHT)$(13_10){$(13_10)	o_Player.ds_fire_type_list[0] = o_fire_straight$(13_10)	$(13_10)} else if (upgrade_type == firetype.BIG_STRAIGHT)$(13_10){$(13_10)	o_Player.ds_fire_type_list[0] = o_fire_big_straight$(13_10)	$(13_10)}else if (upgrade_type == firetype.SEQUENCE)$(13_10){$(13_10)	o_Player.ds_fire_type_list[0] = o_fire_sequence_parent$(13_10)	$(13_10)}else if (upgrade_type == firetype.BALL)$(13_10){$(13_10)	o_Player.ds_fire_type_list[1] = o_fire_ball$(13_10)	$(13_10)}else if (upgrade_type == firetype.TRIPLE_BALL)$(13_10){$(13_10)	o_Player.ds_fire_type_list[1] = o_fire_ball_triple$(13_10)	$(13_10)}else if (upgrade_type == firetype.GRANADE)$(13_10){$(13_10)	o_Player.ds_fire_type_list[1] = o_fire_explosion_grenade$(13_10)	$(13_10)}else if (upgrade_type == firetype.BALL_GRANADE)$(13_10){$(13_10)	o_Player.ds_fire_type_list[1] = o_fire_explosion_ball$(13_10)	$(13_10)}else if (upgrade_type == firetype.BOMERANG)$(13_10){$(13_10)	o_Player.ds_fire_type_list[2] = o_fire_bommerang$(13_10)	$(13_10)}else if (upgrade_type == firetype.DNA)$(13_10){$(13_10)	o_Player.ds_fire_type_list[2] = o_fire_dna_creator$(13_10)	$(13_10)}else if (upgrade_type == firetype.HOMING)$(13_10){$(13_10)	o_Player.ds_fire_type_list[2] = o_fire_star_homing_missile$(13_10)	$(13_10)}else if (upgrade_type == firetype.RAYLASER)$(13_10){$(13_10)	o_Player.ds_fire_type_list[4] = o_fire_ray_laser_red_simple$(13_10)}$(13_10)$(13_10)$(13_10)instance_destroy()$(13_10)$(13_10)$(13_10)"
if (upgrade_type == firetype.STRAIGHT)
{
	o_Player.ds_fire_type_list[0] = o_fire_straight
	
} else if (upgrade_type == firetype.BIG_STRAIGHT)
{
	o_Player.ds_fire_type_list[0] = o_fire_big_straight
	
}else if (upgrade_type == firetype.SEQUENCE)
{
	o_Player.ds_fire_type_list[0] = o_fire_sequence_parent
	
}else if (upgrade_type == firetype.BALL)
{
	o_Player.ds_fire_type_list[1] = o_fire_ball
	
}else if (upgrade_type == firetype.TRIPLE_BALL)
{
	o_Player.ds_fire_type_list[1] = o_fire_ball_triple
	
}else if (upgrade_type == firetype.GRANADE)
{
	o_Player.ds_fire_type_list[1] = o_fire_explosion_grenade
	
}else if (upgrade_type == firetype.BALL_GRANADE)
{
	o_Player.ds_fire_type_list[1] = o_fire_explosion_ball
	
}else if (upgrade_type == firetype.BOMERANG)
{
	o_Player.ds_fire_type_list[2] = o_fire_bommerang
	
}else if (upgrade_type == firetype.DNA)
{
	o_Player.ds_fire_type_list[2] = o_fire_dna_creator
	
}else if (upgrade_type == firetype.HOMING)
{
	o_Player.ds_fire_type_list[2] = o_fire_star_homing_missile
	
}else if (upgrade_type == firetype.RAYLASER)
{
	o_Player.ds_fire_type_list[4] = o_fire_ray_laser_red_simple
}


instance_destroy()

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 44801512
/// @DnDArgument : "sound" "snd_pickup_2"
/// @DnDArgument : "volume" "random_range(0.7,1.5)"
/// @DnDSaveInfo : "sound" "snd_pickup_2"
audio_sound_gain(snd_pickup_2, random_range(0.7,1.5), 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3E9D5772
/// @DnDArgument : "soundid" "snd_pickup_2"
/// @DnDSaveInfo : "soundid" "snd_pickup_2"
audio_play_sound(snd_pickup_2, 0, 0);