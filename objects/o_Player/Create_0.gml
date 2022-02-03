//Variables = VARI
//State

state=playerstate.IDLE

//Movement VARI

spd = 8; // base dos spd
walkspd = spd; //spd nas 4 direções
//dhspeed = 0; //direção na horizontal (-1 esq,1 dir)
//vhspeed = 0; //direção na vertical (-1 cima,1 baixo)
hspd = 0; //spd do player hz
vspd = 0; //spd do player vt
dagspd = round(spd * ((sqrt(2)) / 2)); //spd so que nas diagonais

//Dash VARI

dash = false
dashspd = spd * 2; //dash speed
dash_cool = 0; //cooldown do dash
can_dash  = true; 
dashing = false;
dashingSteps = 0; // A state variable to keep track of how many steps remain for a given dash
dashMaxDuration = 5; // Any dash will last for this many steps

//Gamepad inputs

gphmove = 0;
gpvmove = 0;

//Shoting

playerfire = false;
player_fire_cool = 0;
player_fire_short_cool=10;
player_fire_long_cool=20;
player_default_bullet_type = firetype.STRAIGHT;
current_player_bullet_type = player_default_bullet_type;
upgrade_bullet=0;
current_upgrade_bullet=upgrade_bullet;
bullet_amont = 3;

incremento_angulo = 2;
angulo_tiro_atual=30;

//HP
hpmax = 3;
hpcurrent = hpmax;
hpcooldown = 0;
player_damaged = false