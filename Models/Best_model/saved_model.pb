ÔÎ
ý
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
ž
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"serve*2.2.02unknown8Ěů

actor/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*#
shared_nameactor/dense/kernel
z
&actor/dense/kernel/Read/ReadVariableOpReadVariableOpactor/dense/kernel*
_output_shapes
:	*
dtype0
y
actor/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameactor/dense/bias
r
$actor/dense/bias/Read/ReadVariableOpReadVariableOpactor/dense/bias*
_output_shapes	
:*
dtype0

actor/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameactor/dense_1/kernel

(actor/dense_1/kernel/Read/ReadVariableOpReadVariableOpactor/dense_1/kernel* 
_output_shapes
:
*
dtype0
}
actor/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameactor/dense_1/bias
v
&actor/dense_1/bias/Read/ReadVariableOpReadVariableOpactor/dense_1/bias*
_output_shapes	
:*
dtype0

actor/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameactor/dense_2/kernel
~
(actor/dense_2/kernel/Read/ReadVariableOpReadVariableOpactor/dense_2/kernel*
_output_shapes
:	*
dtype0
|
actor/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameactor/dense_2/bias
u
&actor/dense_2/bias/Read/ReadVariableOpReadVariableOpactor/dense_2/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ž
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ů
valueďBě Bĺ


dense1

dense2
out
regularization_losses
	variables
trainable_variables
	keras_api

signatures
h

	kernel

bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
 
*
	0

1
2
3
4
5
*
	0

1
2
3
4
5
­

layers
layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
regularization_losses
	variables
trainable_variables
 
PN
VARIABLE_VALUEactor/dense/kernel(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEactor/dense/bias&dense1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

	0

1

	0

1
­
 layer_regularization_losses

!layers
"non_trainable_variables
#metrics
$layer_metrics
regularization_losses
	variables
trainable_variables
RP
VARIABLE_VALUEactor/dense_1/kernel(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEactor/dense_1/bias&dense2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
%layer_regularization_losses

&layers
'non_trainable_variables
(metrics
)layer_metrics
regularization_losses
	variables
trainable_variables
OM
VARIABLE_VALUEactor/dense_2/kernel%out/kernel/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEactor/dense_2/bias#out/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
*layer_regularization_losses

+layers
,non_trainable_variables
-metrics
.layer_metrics
regularization_losses
	variables
trainable_variables

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
z
serving_default_input_1Placeholder*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1actor/dense/kernelactor/dense/biasactor/dense_1/kernelactor/dense_1/biasactor/dense_2/kernelactor/dense_2/bias*
Tin
	2*
Tout
2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_read_only_resource_inputs

*-
config_proto

GPU

CPU2*0J 8*0
f+R)
'__inference_signature_wrapper_623307219
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
÷
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&actor/dense/kernel/Read/ReadVariableOp$actor/dense/bias/Read/ReadVariableOp(actor/dense_1/kernel/Read/ReadVariableOp&actor/dense_1/bias/Read/ReadVariableOp(actor/dense_2/kernel/Read/ReadVariableOp&actor/dense_2/bias/Read/ReadVariableOpConst*
Tin

2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

GPU

CPU2*0J 8*+
f&R$
"__inference__traced_save_623307324
ú
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameactor/dense/kernelactor/dense/biasactor/dense_1/kernelactor/dense_1/biasactor/dense_2/kernelactor/dense_2/bias*
Tin
	2*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

GPU

CPU2*0J 8*.
f)R'
%__inference__traced_restore_623307354˘Ň
ň
Ž
F__inference_dense_2_layer_call_and_return_conditional_losses_623307270

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:::P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ž"
ă
%__inference__traced_restore_623307354
file_prefix'
#assignvariableop_actor_dense_kernel'
#assignvariableop_1_actor_dense_bias+
'assignvariableop_2_actor_dense_1_kernel)
%assignvariableop_3_actor_dense_1_bias+
'assignvariableop_4_actor_dense_2_kernel)
%assignvariableop_5_actor_dense_2_bias

identity_7˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘	RestoreV2˘RestoreV2_1ů
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueűBřB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB%out/kernel/.ATTRIBUTES/VARIABLE_VALUEB#out/bias/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
RestoreV2/shape_and_slicesÉ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*,
_output_shapes
::::::*
dtypes

22
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp#assignvariableop_actor_dense_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1
AssignVariableOp_1AssignVariableOp#assignvariableop_1_actor_dense_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2
AssignVariableOp_2AssignVariableOp'assignvariableop_2_actor_dense_1_kernelIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3
AssignVariableOp_3AssignVariableOp%assignvariableop_3_actor_dense_1_biasIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4
AssignVariableOp_4AssignVariableOp'assignvariableop_4_actor_dense_2_kernelIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5
AssignVariableOp_5AssignVariableOp%assignvariableop_5_actor_dense_2_biasIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5¨
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slicesÄ
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpä

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_6đ

Identity_7IdentityIdentity_6:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2

Identity_7"!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ů"
š
"__inference__traced_save_623307324
file_prefix1
-savev2_actor_dense_kernel_read_readvariableop/
+savev2_actor_dense_bias_read_readvariableop3
/savev2_actor_dense_1_kernel_read_readvariableop1
-savev2_actor_dense_1_bias_read_readvariableop3
/savev2_actor_dense_2_kernel_read_readvariableop1
-savev2_actor_dense_2_bias_read_readvariableop
savev2_1_const

identity_1˘MergeV2Checkpoints˘SaveV2˘SaveV2_1
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_890dcb46899748cfbab6ad955bc49e59/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardŚ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameó
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueűBřB(dense1/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense1/bias/.ATTRIBUTES/VARIABLE_VALUEB(dense2/kernel/.ATTRIBUTES/VARIABLE_VALUEB&dense2/bias/.ATTRIBUTES/VARIABLE_VALUEB%out/kernel/.ATTRIBUTES/VARIABLE_VALUEB#out/bias/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B B 2
SaveV2/shape_and_slicesÍ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_actor_dense_kernel_read_readvariableop+savev2_actor_dense_bias_read_readvariableop/savev2_actor_dense_1_kernel_read_readvariableop-savev2_actor_dense_1_bias_read_readvariableop/savev2_actor_dense_2_kernel_read_readvariableop-savev2_actor_dense_2_bias_read_readvariableop"/device:CPU:0*
_output_shapes
 *
dtypes

22
SaveV2
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shardŹ
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1˘
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slicesĎ
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1ă
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesŹ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*M
_input_shapes<
:: :	::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: 
ň
Ž
F__inference_dense_2_layer_call_and_return_conditional_losses_623307164

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:::P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ë
Ź
D__inference_dense_layer_call_and_return_conditional_losses_623307230

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:::O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
đ
Ž
F__inference_dense_1_layer_call_and_return_conditional_losses_623307136

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:::P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
ď
ď
$__inference__wrapped_model_623307093
input_1.
*actor_dense_matmul_readvariableop_resource/
+actor_dense_biasadd_readvariableop_resource0
,actor_dense_1_matmul_readvariableop_resource1
-actor_dense_1_biasadd_readvariableop_resource0
,actor_dense_2_matmul_readvariableop_resource1
-actor_dense_2_biasadd_readvariableop_resource
identity˛
!actor/dense/MatMul/ReadVariableOpReadVariableOp*actor_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02#
!actor/dense/MatMul/ReadVariableOp
actor/dense/MatMulMatMulinput_1)actor/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense/MatMulą
"actor/dense/BiasAdd/ReadVariableOpReadVariableOp+actor_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"actor/dense/BiasAdd/ReadVariableOp˛
actor/dense/BiasAddBiasAddactor/dense/MatMul:product:0*actor/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense/BiasAdd}
actor/dense/ReluReluactor/dense/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense/Reluš
#actor/dense_1/MatMul/ReadVariableOpReadVariableOp,actor_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02%
#actor/dense_1/MatMul/ReadVariableOpś
actor/dense_1/MatMulMatMulactor/dense/Relu:activations:0+actor/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense_1/MatMulˇ
$actor/dense_1/BiasAdd/ReadVariableOpReadVariableOp-actor_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02&
$actor/dense_1/BiasAdd/ReadVariableOpş
actor/dense_1/BiasAddBiasAddactor/dense_1/MatMul:product:0,actor/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense_1/BiasAdd
actor/dense_1/ReluReluactor/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense_1/Relu¸
#actor/dense_2/MatMul/ReadVariableOpReadVariableOp,actor_dense_2_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#actor/dense_2/MatMul/ReadVariableOpˇ
actor/dense_2/MatMulMatMul actor/dense_1/Relu:activations:0+actor/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense_2/MatMulś
$actor/dense_2/BiasAdd/ReadVariableOpReadVariableOp-actor_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$actor/dense_2/BiasAdd/ReadVariableOpš
actor/dense_2/BiasAddBiasAddactor/dense_2/MatMul:product:0,actor/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense_2/BiasAdd
actor/dense_2/SoftmaxSoftmaxactor/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
actor/dense_2/Softmaxs
IdentityIdentityactor/dense_2/Softmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙:::::::P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ó
š
'__inference_signature_wrapper_623307219
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity˘StatefulPartitionedCallę
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_read_only_resource_inputs

*-
config_proto

GPU

CPU2*0J 8*-
f(R&
$__inference__wrapped_model_6233070932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ő
ť
)__inference_actor_layer_call_fn_623307200
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity˘StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*(
_read_only_resource_inputs

*-
config_proto

GPU

CPU2*0J 8*M
fHRF
D__inference_actor_layer_call_and_return_conditional_losses_6233071822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙::::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ë
Ź
D__inference_dense_layer_call_and_return_conditional_losses_623307108

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙:::O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 


+__inference_dense_2_layer_call_fn_623307279

inputs
unknown
	unknown_0
identity˘StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

GPU

CPU2*0J 8*O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_6233071642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*/
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
đ
Ž
F__inference_dense_1_layer_call_and_return_conditional_losses_623307250

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*/
_input_shapes
:˙˙˙˙˙˙˙˙˙:::P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
đ
Î
D__inference_actor_layer_call_and_return_conditional_losses_623307182
input_1
dense_623307119
dense_623307121
dense_1_623307147
dense_1_623307149
dense_2_623307175
dense_2_623307177
identity˘dense/StatefulPartitionedCall˘dense_1/StatefulPartitionedCall˘dense_2/StatefulPartitionedCallń
dense/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_623307119dense_623307121*
Tin
2*
Tout
2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

GPU

CPU2*0J 8*M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_6233071082
dense/StatefulPartitionedCall§
dense/IdentityIdentity&dense/StatefulPartitionedCall:output:0^dense/StatefulPartitionedCall*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense/Identity
dense_1/StatefulPartitionedCallStatefulPartitionedCalldense/Identity:output:0dense_1_623307147dense_1_623307149*
Tin
2*
Tout
2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

GPU

CPU2*0J 8*O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_6233071362!
dense_1/StatefulPartitionedCallŻ
dense_1/IdentityIdentity(dense_1/StatefulPartitionedCall:output:0 ^dense_1/StatefulPartitionedCall*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense_1/Identity
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_1/Identity:output:0dense_2_623307175dense_2_623307177*
Tin
2*
Tout
2*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

GPU

CPU2*0J 8*O
fJRH
F__inference_dense_2_layer_call_and_return_conditional_losses_6233071642!
dense_2/StatefulPartitionedCallŽ
dense_2/IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2
dense_2/IdentityŃ
IdentityIdentitydense_2/Identity:output:0^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:˙˙˙˙˙˙˙˙˙::::::2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:P L
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ű
~
)__inference_dense_layer_call_fn_623307239

inputs
unknown
	unknown_0
identity˘StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

GPU

CPU2*0J 8*M
fHRF
D__inference_dense_layer_call_and_return_conditional_losses_6233071082
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*.
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 


+__inference_dense_1_layer_call_fn_623307259

inputs
unknown
	unknown_0
identity˘StatefulPartitionedCallŘ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*$
_read_only_resource_inputs
*-
config_proto

GPU

CPU2*0J 8*O
fJRH
F__inference_dense_1_layer_call_and_return_conditional_losses_6233071362
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙2

Identity"
identityIdentity:output:0*/
_input_shapes
:˙˙˙˙˙˙˙˙˙::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: "ŻL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ť
serving_default
;
input_10
serving_default_input_1:0˙˙˙˙˙˙˙˙˙<
output_10
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙tensorflow/serving/predict:N
Ž

dense1

dense2
out
regularization_losses
	variables
trainable_variables
	keras_api

signatures
/__call__
*0&call_and_return_all_conditional_losses
1_default_save_signature"Ń
_tf_keras_modelˇ{"class_name": "Actor", "name": "actor", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "config": {"layer was saved without config": true}, "is_graph_network": false, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Actor"}}
Ć

	kernel

bias
regularization_losses
	variables
trainable_variables
	keras_api
2__call__
*3&call_and_return_all_conditional_losses"Ą
_tf_keras_layer{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 1024, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 8]}}
Ď

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
4__call__
*5&call_and_return_all_conditional_losses"Ş
_tf_keras_layer{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 512, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1024}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 1024]}}
Î

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
6__call__
*7&call_and_return_all_conditional_losses"Š
_tf_keras_layer{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 4, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [1, 512]}}
 "
trackable_list_wrapper
J
	0

1
2
3
4
5"
trackable_list_wrapper
J
	0

1
2
3
4
5"
trackable_list_wrapper
Ę

layers
layer_regularization_losses
non_trainable_variables
metrics
layer_metrics
regularization_losses
	variables
trainable_variables
/__call__
1_default_save_signature
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
,
8serving_default"
signature_map
%:#	2actor/dense/kernel
:2actor/dense/bias
 "
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
.
	0

1"
trackable_list_wrapper
­
 layer_regularization_losses

!layers
"non_trainable_variables
#metrics
$layer_metrics
regularization_losses
	variables
trainable_variables
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
(:&
2actor/dense_1/kernel
!:2actor/dense_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
%layer_regularization_losses

&layers
'non_trainable_variables
(metrics
)layer_metrics
regularization_losses
	variables
trainable_variables
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
':%	2actor/dense_2/kernel
 :2actor/dense_2/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
*layer_regularization_losses

+layers
,non_trainable_variables
-metrics
.layer_metrics
regularization_losses
	variables
trainable_variables
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ű2ř
)__inference_actor_layer_call_fn_623307200Ę
˛
FullArgSpec!
args
jself
j
input_data
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *&˘#
!
input_1˙˙˙˙˙˙˙˙˙
2
D__inference_actor_layer_call_and_return_conditional_losses_623307182Ę
˛
FullArgSpec!
args
jself
j
input_data
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *&˘#
!
input_1˙˙˙˙˙˙˙˙˙
â2ß
$__inference__wrapped_model_623307093ś
˛
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *&˘#
!
input_1˙˙˙˙˙˙˙˙˙
Ó2Đ
)__inference_dense_layer_call_fn_623307239˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
î2ë
D__inference_dense_layer_call_and_return_conditional_losses_623307230˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ő2Ň
+__inference_dense_1_layer_call_fn_623307259˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đ2í
F__inference_dense_1_layer_call_and_return_conditional_losses_623307250˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Ő2Ň
+__inference_dense_2_layer_call_fn_623307279˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
đ2í
F__inference_dense_2_layer_call_and_return_conditional_losses_623307270˘
˛
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
6B4
'__inference_signature_wrapper_623307219input_1
$__inference__wrapped_model_623307093o	
0˘-
&˘#
!
input_1˙˙˙˙˙˙˙˙˙
Ş "3Ş0
.
output_1"
output_1˙˙˙˙˙˙˙˙˙Š
D__inference_actor_layer_call_and_return_conditional_losses_623307182a	
0˘-
&˘#
!
input_1˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
)__inference_actor_layer_call_fn_623307200T	
0˘-
&˘#
!
input_1˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙¨
F__inference_dense_1_layer_call_and_return_conditional_losses_623307250^0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 
+__inference_dense_1_layer_call_fn_623307259Q0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙§
F__inference_dense_2_layer_call_and_return_conditional_losses_623307270]0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "%˘"

0˙˙˙˙˙˙˙˙˙
 
+__inference_dense_2_layer_call_fn_623307279P0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ľ
D__inference_dense_layer_call_and_return_conditional_losses_623307230]	
/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "&˘#

0˙˙˙˙˙˙˙˙˙
 }
)__inference_dense_layer_call_fn_623307239P	
/˘,
%˘"
 
inputs˙˙˙˙˙˙˙˙˙
Ş "˙˙˙˙˙˙˙˙˙Ľ
'__inference_signature_wrapper_623307219z	
;˘8
˘ 
1Ş.
,
input_1!
input_1˙˙˙˙˙˙˙˙˙"3Ş0
.
output_1"
output_1˙˙˙˙˙˙˙˙˙