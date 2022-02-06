/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 44F04FA4
/// @DnDArgument : "xpos" "672"
/// @DnDArgument : "ypos" "830"
/// @DnDArgument : "objectid" "o_change_bullet"
/// @DnDArgument : "layer" ""Layer_upgrade""
/// @DnDSaveInfo : "objectid" "o_change_bullet"
instance_create_layer(672, 830, "Layer_upgrade", o_change_bullet);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 357E503F
/// @DnDArgument : "xpos" "800"
/// @DnDArgument : "ypos" "830"
/// @DnDArgument : "objectid" "o_upgrade"
/// @DnDArgument : "layer" ""Layer_upgrade""
/// @DnDSaveInfo : "objectid" "o_upgrade"
instance_create_layer(800, 830, "Layer_upgrade", o_upgrade);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 39C9ADFB
/// @DnDInput : 2
/// @DnDApplyTo : {o_change_bullet}
/// @DnDArgument : "value" "0.5"
/// @DnDArgument : "value_1" "0.5"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
with(o_change_bullet) {
image_xscale = 0.5;
image_yscale = 0.5;
}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 5076FC03
/// @DnDInput : 2
/// @DnDApplyTo : {o_upgrade}
/// @DnDArgument : "value" "0.5"
/// @DnDArgument : "value_1" "0.5"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"
with(o_upgrade) {
image_xscale = 0.5;
image_yscale = 0.5;
}