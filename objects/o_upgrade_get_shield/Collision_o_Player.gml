/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 76BAA9CB
/// @DnDArgument : "code" "$(13_10)$(13_10)upgrade_shield_amount +=1;"


upgrade_shield_amount +=1;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 08CE60EB
/// @DnDApplyTo : other
/// @DnDArgument : "function" "o_Player.create_shield"
with(other) {
	o_Player.create_shield();
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 20239947
instance_destroy();