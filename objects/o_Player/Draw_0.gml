draw_self();

draw_set_colour($FFFFFFFF & $ffffff);
var l0F6CA152_0=($FFFFFFFF >> 24);
draw_set_alpha(l0F6CA152_0 / $ff);

draw_set_font(Font1);

draw_text(40, 10, string("HP: ") + string(hpcurrent));
draw_text(40, 40, string("Bullet__Upgrade ") + string(current_upgrade_bullet));
draw_text(40, 70, string("Bullet type ") + string(current_player_bullet_type));
draw_text(40, 140, string("shield_amount ") + string(shield_amount));

//draw_text(20, 30, string("Caption: ") + string(state));



if (player_damaged) 
{
	image_alpha = 0.5;
}

if (!player_damaged) 
{
	image_alpha = 1;
}

