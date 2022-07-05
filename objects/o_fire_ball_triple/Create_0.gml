/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30FDF8A3
/// @DnDArgument : "code" "initial_x = x;$(13_10)initial_y = y;$(13_10)bullet_spd = 15;$(13_10)$(13_10)bullet_angle = 90;$(13_10)add_bullet_angle = 0;$(13_10)$(13_10)bullet_team = 0;$(13_10)$(13_10)bullet_amont = 4$(13_10)incremento_angulo = 50;$(13_10)angulo_tiro_atual=15;$(13_10)$(13_10)var bullet_ball_direction_var = o_Player.player_direction - (bullet_amont-1) * (angulo_tiro_atual/2);$(13_10)for (var i = 0;i < bullet_amont; ++i) $(13_10){$(13_10)	var _inst = instance_create_layer(o_Player.x,o_Player.y,"Layer_bullet",o_fire_ball);$(13_10)	with(_inst) $(13_10)	{$(13_10)		bullet_team = other.bullet_team;$(13_10)		bullet_angle = (bullet_ball_direction_var + (other.angulo_tiro_atual * i));$(13_10)	}$(13_10)					$(13_10)}"
initial_x = x;
initial_y = y;
bullet_spd = 15;

bullet_angle = 90;
add_bullet_angle = 0;

bullet_team = 0;

bullet_amont = 4
incremento_angulo = 50;
angulo_tiro_atual=15;

var bullet_ball_direction_var = o_Player.player_direction - (bullet_amont-1) * (angulo_tiro_atual/2);
for (var i = 0;i < bullet_amont; ++i) 
{
	var _inst = instance_create_layer(o_Player.x,o_Player.y,"Layer_bullet",o_fire_ball);
	with(_inst) 
	{
		bullet_team = other.bullet_team;
		bullet_angle = (bullet_ball_direction_var + (other.angulo_tiro_atual * i));
	}
					
}