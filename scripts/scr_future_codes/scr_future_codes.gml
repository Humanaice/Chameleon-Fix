/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0F2D3F3D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_future_codes"
function scr_future_codes() 
{

}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4545B2E5
/// @DnDDisabled : 1
/// @DnDArgument : "code" "if (angulo_tiro_atual >= 35 or angulo_tiro_atual <= 5) {$(13_10)	incremento_angulo = incremento_angulo * -1;$(13_10)}$(13_10)$(13_10)angulo_tiro_atual = angulo_tiro_atual + incremento_angulo;"