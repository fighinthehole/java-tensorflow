
C
inputPlaceholder*
dtype0* 
shape:���������
D
targetPlaceholder* 
shape:���������*
dtype0
�
-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0
y
+dense/kernel/Initializer/random_uniform/minConst*
dtype0*
valueB
 *׳ݿ*
_class
loc:@dense/kernel
y
+dense/kernel/Initializer/random_uniform/maxConst*
dtype0*
valueB
 *׳�?*
_class
loc:@dense/kernel
�
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*
T0*
_class
loc:@dense/kernel*
dtype0*
seed2 *

seed 
�
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel
�
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel
�
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel
�
dense/kernel
VariableV2*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container *
shape
:
�
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
l
dense/bias/Initializer/zerosConst*
dtype0*
valueB*    *
_class
loc:@dense/bias
y

dense/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
�
dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
>
dense/Tensordot/ShapeShapeinput*
T0*
out_type0
>
dense/Tensordot/RankConst*
value	B :*
dtype0
B
dense/Tensordot/axesConst*
valueB:*
dtype0
H
dense/Tensordot/GreaterEqual/yConst*
value	B : *
dtype0
k
dense/Tensordot/GreaterEqualGreaterEqualdense/Tensordot/axesdense/Tensordot/GreaterEqual/y*
T0
R
dense/Tensordot/CastCastdense/Tensordot/GreaterEqual*

SrcT0
*

DstT0
O
dense/Tensordot/mulMuldense/Tensordot/Castdense/Tensordot/axes*
T0
@
dense/Tensordot/Less/yConst*
value	B : *
dtype0
S
dense/Tensordot/LessLessdense/Tensordot/axesdense/Tensordot/Less/y*
T0
L
dense/Tensordot/Cast_1Castdense/Tensordot/Less*

SrcT0
*

DstT0
O
dense/Tensordot/addAdddense/Tensordot/axesdense/Tensordot/Rank*
T0
R
dense/Tensordot/mul_1Muldense/Tensordot/Cast_1dense/Tensordot/add*
T0
Q
dense/Tensordot/add_1Adddense/Tensordot/muldense/Tensordot/mul_1*
T0
E
dense/Tensordot/range/startConst*
dtype0*
value	B : 
E
dense/Tensordot/range/deltaConst*
value	B :*
dtype0
z
dense/Tensordot/rangeRangedense/Tensordot/range/startdense/Tensordot/Rankdense/Tensordot/range/delta*

Tidx0
j
dense/Tensordot/ListDiffListDiffdense/Tensordot/rangedense/Tensordot/add_1*
out_idx0*
T0
�
dense/Tensordot/GatherGatherdense/Tensordot/Shapedense/Tensordot/ListDiff*
Tindices0*
validate_indices(*
Tparams0
�
dense/Tensordot/Gather_1Gatherdense/Tensordot/Shapedense/Tensordot/add_1*
Tindices0*
validate_indices(*
Tparams0
C
dense/Tensordot/ConstConst*
valueB: *
dtype0
q
dense/Tensordot/ProdProddense/Tensordot/Gatherdense/Tensordot/Const*
	keep_dims( *

Tidx0*
T0
E
dense/Tensordot/Const_1Const*
valueB: *
dtype0
w
dense/Tensordot/Prod_1Proddense/Tensordot/Gather_1dense/Tensordot/Const_1*
T0*
	keep_dims( *

Tidx0
E
dense/Tensordot/concat/axisConst*
value	B : *
dtype0
�
dense/Tensordot/concatConcatV2dense/Tensordot/Gather_1dense/Tensordot/Gatherdense/Tensordot/concat/axis*
T0*
N*

Tidx0
G
dense/Tensordot/concat_1/axisConst*
value	B : *
dtype0
�
dense/Tensordot/concat_1ConcatV2dense/Tensordot/ListDiffdense/Tensordot/add_1dense/Tensordot/concat_1/axis*

Tidx0*
T0*
N
i
dense/Tensordot/stackPackdense/Tensordot/Proddense/Tensordot/Prod_1*
T0*

axis *
N
]
dense/Tensordot/transpose	Transposeinputdense/Tensordot/concat_1*
T0*
Tperm0
k
dense/Tensordot/ReshapeReshapedense/Tensordot/transposedense/Tensordot/stack*
T0*
Tshape0
U
 dense/Tensordot/transpose_1/permConst*
valueB"       *
dtype0
s
dense/Tensordot/transpose_1	Transposedense/kernel/read dense/Tensordot/transpose_1/perm*
Tperm0*
T0
T
dense/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0
y
dense/Tensordot/Reshape_1Reshapedense/Tensordot/transpose_1dense/Tensordot/Reshape_1/shape*
T0*
Tshape0
�
dense/Tensordot/MatMulMatMuldense/Tensordot/Reshapedense/Tensordot/Reshape_1*
transpose_a( *
transpose_b( *
T0
E
dense/Tensordot/Const_2Const*
valueB:*
dtype0
G
dense/Tensordot/concat_2/axisConst*
value	B : *
dtype0
�
dense/Tensordot/concat_2ConcatV2dense/Tensordot/Gatherdense/Tensordot/Const_2dense/Tensordot/concat_2/axis*
N*

Tidx0*
T0
c
dense/TensordotReshapedense/Tensordot/MatMuldense/Tensordot/concat_2*
T0*
Tshape0
Z
dense/BiasAddBiasAdddense/Tensordotdense/bias/read*
T0*
data_formatNHWC
*
outputIdentitydense/BiasAdd*
T0
#
subSuboutputtarget*
T0

SquareSquaresub*
T0
>
ConstConst*!
valueB"          *
dtype0
A
lossMeanSquareConst*
T0*
	keep_dims( *

Tidx0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  �?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
Z
!gradients/loss_grad/Reshape/shapeConst*!
valueB"         *
dtype0
p
gradients/loss_grad/ReshapeReshapegradients/Fill!gradients/loss_grad/Reshape/shape*
T0*
Tshape0
C
gradients/loss_grad/ShapeShapeSquare*
T0*
out_type0
s
gradients/loss_grad/TileTilegradients/loss_grad/Reshapegradients/loss_grad/Shape*

Tmultiples0*
T0
E
gradients/loss_grad/Shape_1ShapeSquare*
T0*
out_type0
D
gradients/loss_grad/Shape_2Const*
valueB *
dtype0
w
gradients/loss_grad/ConstConst*.
_class$
" loc:@gradients/loss_grad/Shape_1*
valueB: *
dtype0
�
gradients/loss_grad/ProdProdgradients/loss_grad/Shape_1gradients/loss_grad/Const*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/loss_grad/Shape_1
y
gradients/loss_grad/Const_1Const*.
_class$
" loc:@gradients/loss_grad/Shape_1*
valueB: *
dtype0
�
gradients/loss_grad/Prod_1Prodgradients/loss_grad/Shape_2gradients/loss_grad/Const_1*
	keep_dims( *

Tidx0*
T0*.
_class$
" loc:@gradients/loss_grad/Shape_1
w
gradients/loss_grad/Maximum/yConst*
dtype0*.
_class$
" loc:@gradients/loss_grad/Shape_1*
value	B :
�
gradients/loss_grad/MaximumMaximumgradients/loss_grad/Prod_1gradients/loss_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/loss_grad/Shape_1
�
gradients/loss_grad/floordivFloorDivgradients/loss_grad/Prodgradients/loss_grad/Maximum*
T0*.
_class$
" loc:@gradients/loss_grad/Shape_1
V
gradients/loss_grad/CastCastgradients/loss_grad/floordiv*

DstT0*

SrcT0
c
gradients/loss_grad/truedivRealDivgradients/loss_grad/Tilegradients/loss_grad/Cast*
T0
f
gradients/Square_grad/mul/xConst^gradients/loss_grad/truediv*
valueB
 *   @*
dtype0
K
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub*
T0
c
gradients/Square_grad/mul_1Mulgradients/loss_grad/truedivgradients/Square_grad/mul*
T0
B
gradients/sub_grad/ShapeShapeoutput*
T0*
out_type0
D
gradients/sub_grad/Shape_1Shapetarget*
out_type0*
T0
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
�
gradients/sub_grad/SumSumgradients/Square_grad/mul_1(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0
�
gradients/sub_grad/Sum_1Sumgradients/Square_grad/mul_1*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
�
(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad+gradients/sub_grad/tuple/control_dependency*
T0*
data_formatNHWC
�
-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp,^gradients/sub_grad/tuple/control_dependency)^gradients/dense/BiasAdd_grad/BiasAddGrad
�
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity+gradients/sub_grad/tuple/control_dependency.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
�
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad*
T0
^
$gradients/dense/Tensordot_grad/ShapeShapedense/Tensordot/MatMul*
T0*
out_type0
�
&gradients/dense/Tensordot_grad/ReshapeReshape5gradients/dense/BiasAdd_grad/tuple/control_dependency$gradients/dense/Tensordot_grad/Shape*
Tshape0*
T0
�
,gradients/dense/Tensordot/MatMul_grad/MatMulMatMul&gradients/dense/Tensordot_grad/Reshapedense/Tensordot/Reshape_1*
transpose_a( *
transpose_b(*
T0
�
.gradients/dense/Tensordot/MatMul_grad/MatMul_1MatMuldense/Tensordot/Reshape&gradients/dense/Tensordot_grad/Reshape*
T0*
transpose_a(*
transpose_b( 
�
6gradients/dense/Tensordot/MatMul_grad/tuple/group_depsNoOp-^gradients/dense/Tensordot/MatMul_grad/MatMul/^gradients/dense/Tensordot/MatMul_grad/MatMul_1
�
>gradients/dense/Tensordot/MatMul_grad/tuple/control_dependencyIdentity,gradients/dense/Tensordot/MatMul_grad/MatMul7^gradients/dense/Tensordot/MatMul_grad/tuple/group_deps*?
_class5
31loc:@gradients/dense/Tensordot/MatMul_grad/MatMul*
T0
�
@gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency_1Identity.gradients/dense/Tensordot/MatMul_grad/MatMul_17^gradients/dense/Tensordot/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/dense/Tensordot/MatMul_grad/MatMul_1
c
.gradients/dense/Tensordot/Reshape_1_grad/ShapeConst*
valueB"      *
dtype0
�
0gradients/dense/Tensordot/Reshape_1_grad/ReshapeReshape@gradients/dense/Tensordot/MatMul_grad/tuple/control_dependency_1.gradients/dense/Tensordot/Reshape_1_grad/Shape*
Tshape0*
T0
|
<gradients/dense/Tensordot/transpose_1_grad/InvertPermutationInvertPermutation dense/Tensordot/transpose_1/perm*
T0
�
4gradients/dense/Tensordot/transpose_1_grad/transpose	Transpose0gradients/dense/Tensordot/Reshape_1_grad/Reshape<gradients/dense/Tensordot/transpose_1_grad/InvertPermutation*
Tperm0*
T0
@
train/learning_rateConst*
valueB
 *
�#<*
dtype0
�
.train/update_dense/kernel/ApplyGradientDescentApplyGradientDescentdense/kerneltrain/learning_rate4gradients/dense/Tensordot/transpose_1_grad/transpose*
_class
loc:@dense/kernel*
use_locking( *
T0
�
,train/update_dense/bias/ApplyGradientDescentApplyGradientDescent
dense/biastrain/learning_rate7gradients/dense/BiasAdd_grad/tuple/control_dependency_1*
_class
loc:@dense/bias*
use_locking( *
T0
m
trainNoOp/^train/update_dense/kernel/ApplyGradientDescent-^train/update_dense/bias/ApplyGradientDescent
6
initNoOp^dense/kernel/Assign^dense/bias/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0
]
save/SaveV2/tensor_namesConst*-
value$B"B
dense/biasBdense/kernel*
dtype0
K
save/SaveV2/shape_and_slicesConst*
valueBB B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices
dense/biasdense/kernel*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
R
save/RestoreV2/tensor_namesConst*
valueBB
dense/bias*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
�
save/AssignAssign
dense/biassave/RestoreV2*
T0*
_class
loc:@dense/bias*
validate_shape(*
use_locking(
V
save/RestoreV2_1/tensor_namesConst*!
valueBBdense/kernel*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
�
save/Assign_1Assigndense/kernelsave/RestoreV2_1*
T0*
_class
loc:@dense/kernel*
validate_shape(*
use_locking(
6
save/restore_allNoOp^save/Assign^save/Assign_1"