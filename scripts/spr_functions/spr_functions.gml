/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 689E75A1
/// @DnDArgument : "code" "function cycle() //(value, min, max)$(13_10){$(13_10)	var value = argument[0]$(13_10)	var _min = argument[1]$(13_10)	var _max = argument[2]$(13_10)	var result, delta;$(13_10)	delta = (_max - _min);$(13_10)	result = (value - _min) mod delta;$(13_10)	if (result < 0) result += delta;$(13_10)	return result + _min;$(13_10)}$(13_10)$(13_10)function angle_rotate()//(angle, target, speed)$(13_10){$(13_10)	var _angle = argument[0]$(13_10)	var target = argument[1]$(13_10)	var _speed = argument[2]$(13_10)	var diff;$(13_10)	// 180 is to be replaced by "pi" for radians$(13_10)	diff = cycle((target - _angle), -180, 180);$(13_10)	// clamp rotations by speed:$(13_10)	if (diff < -_speed) return _angle - _speed;$(13_10)	if (diff > _speed) return _angle + _speed;$(13_10)	// if difference within speed, rotation's done:$(13_10)	return target;$(13_10)}$(13_10)$(13_10)function go_down ()$(13_10){$(13_10)	direction = -90$(13_10)	speed = 10$(13_10)	$(13_10)}"
function cycle() //(value, min, max)
{
	var value = argument[0]
	var _min = argument[1]
	var _max = argument[2]
	var result, delta;
	delta = (_max - _min);
	result = (value - _min) mod delta;
	if (result < 0) result += delta;
	return result + _min;
}

function angle_rotate()//(angle, target, speed)
{
	var _angle = argument[0]
	var target = argument[1]
	var _speed = argument[2]
	var diff;
	// 180 is to be replaced by "pi" for radians
	diff = cycle((target - _angle), -180, 180);
	// clamp rotations by speed:
	if (diff < -_speed) return _angle - _speed;
	if (diff > _speed) return _angle + _speed;
	// if difference within speed, rotation's done:
	return target;
}

function go_down ()
{
	direction = -90
	speed = 10
	
}