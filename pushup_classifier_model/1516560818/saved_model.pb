çÇ
ěÇ
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
ś
AsString

input"T

output"
Ttype:
	2	
"
	precisionint˙˙˙˙˙˙˙˙˙"

scientificbool( "
shortestbool( "
widthint˙˙˙˙˙˙˙˙˙"
fillstring 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
A
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ď
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
H
ShardedFilename
basename	
shard

num_shards
filename
/
Sigmoid
x"T
y"T"
Ttype:	
2
8
Softmax
logits"T
softmax"T"
Ttype:
2
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.4.12v1.4.0-19-ga52c8d9Ä

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
dtype0	*
_output_shapes
: *
shared_name *
_class
loc:@global_step*
	container *
shape: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: *
use_locking(
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
_
input_example_tensorPlaceholder*
dtype0*
_output_shapes	
:*
shape:
U
ParseExample/ConstConst*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_2Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_3Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_4Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_5Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_6Const*
dtype0*
_output_shapes
: *
valueB 
W
ParseExample/Const_7Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_8Const*
valueB *
dtype0*
_output_shapes
: 
W
ParseExample/Const_9Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_10Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_11Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_12Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_13Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_14Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_15Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_16Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_17Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_18Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_19Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_20Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_21Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_22Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_23Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_24Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_25Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_26Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_27Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_28Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_29Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_30Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_31Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_32Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_33Const*
dtype0*
_output_shapes
: *
valueB 
X
ParseExample/Const_34Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_35Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_36Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_37Const*
valueB *
dtype0*
_output_shapes
: 
X
ParseExample/Const_38Const*
dtype0*
_output_shapes
: *
valueB 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*
_output_shapes
: *
valueB Bleft-elbow-c
s
&ParseExample/ParseExample/dense_keys_1Const*
valueB Bleft-elbow-x*
dtype0*
_output_shapes
: 
s
&ParseExample/ParseExample/dense_keys_2Const*
dtype0*
_output_shapes
: *
valueB Bleft-elbow-y
r
&ParseExample/ParseExample/dense_keys_3Const*
valueB Bleft-foot-c*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_4Const*
valueB Bleft-foot-x*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_5Const*
valueB Bleft-foot-y*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_6Const*
valueB Bleft-hand-c*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_7Const*
valueB Bleft-hand-x*
dtype0*
_output_shapes
: 
r
&ParseExample/ParseExample/dense_keys_8Const*
valueB Bleft-hand-y*
dtype0*
_output_shapes
: 
q
&ParseExample/ParseExample/dense_keys_9Const*
valueB B
left-hip-c*
dtype0*
_output_shapes
: 
r
'ParseExample/ParseExample/dense_keys_10Const*
dtype0*
_output_shapes
: *
valueB B
left-hip-x
r
'ParseExample/ParseExample/dense_keys_11Const*
dtype0*
_output_shapes
: *
valueB B
left-hip-y
s
'ParseExample/ParseExample/dense_keys_12Const*
valueB Bleft-knee-c*
dtype0*
_output_shapes
: 
s
'ParseExample/ParseExample/dense_keys_13Const*
valueB Bleft-knee-x*
dtype0*
_output_shapes
: 
s
'ParseExample/ParseExample/dense_keys_14Const*
valueB Bleft-knee-y*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/dense_keys_15Const* 
valueB Bleft-shoulder-c*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/dense_keys_16Const* 
valueB Bleft-shoulder-x*
dtype0*
_output_shapes
: 
w
'ParseExample/ParseExample/dense_keys_17Const* 
valueB Bleft-shoulder-y*
dtype0*
_output_shapes
: 
n
'ParseExample/ParseExample/dense_keys_18Const*
valueB Bneck-c*
dtype0*
_output_shapes
: 
n
'ParseExample/ParseExample/dense_keys_19Const*
valueB Bneck-x*
dtype0*
_output_shapes
: 
n
'ParseExample/ParseExample/dense_keys_20Const*
dtype0*
_output_shapes
: *
valueB Bneck-y
u
'ParseExample/ParseExample/dense_keys_21Const*
valueB Bright-elbow-c*
dtype0*
_output_shapes
: 
u
'ParseExample/ParseExample/dense_keys_22Const*
valueB Bright-elbow-x*
dtype0*
_output_shapes
: 
u
'ParseExample/ParseExample/dense_keys_23Const*
valueB Bright-elbow-y*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_24Const*
valueB Bright-foot-c*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_25Const*
dtype0*
_output_shapes
: *
valueB Bright-foot-x
t
'ParseExample/ParseExample/dense_keys_26Const*
valueB Bright-foot-y*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_27Const*
dtype0*
_output_shapes
: *
valueB Bright-hand-c
t
'ParseExample/ParseExample/dense_keys_28Const*
dtype0*
_output_shapes
: *
valueB Bright-hand-x
t
'ParseExample/ParseExample/dense_keys_29Const*
dtype0*
_output_shapes
: *
valueB Bright-hand-y
s
'ParseExample/ParseExample/dense_keys_30Const*
valueB Bright-hip-c*
dtype0*
_output_shapes
: 
s
'ParseExample/ParseExample/dense_keys_31Const*
valueB Bright-hip-x*
dtype0*
_output_shapes
: 
s
'ParseExample/ParseExample/dense_keys_32Const*
dtype0*
_output_shapes
: *
valueB Bright-hip-y
t
'ParseExample/ParseExample/dense_keys_33Const*
valueB Bright-knee-c*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_34Const*
valueB Bright-knee-x*
dtype0*
_output_shapes
: 
t
'ParseExample/ParseExample/dense_keys_35Const*
valueB Bright-knee-y*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/dense_keys_36Const*
dtype0*
_output_shapes
: *!
valueB Bright-shoulder-c
x
'ParseExample/ParseExample/dense_keys_37Const*!
valueB Bright-shoulder-x*
dtype0*
_output_shapes
: 
x
'ParseExample/ParseExample/dense_keys_38Const*
dtype0*
_output_shapes
: *!
valueB Bright-shoulder-y

ParseExample/ParseExampleParseExampleinput_example_tensorParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0&ParseExample/ParseExample/dense_keys_1&ParseExample/ParseExample/dense_keys_2&ParseExample/ParseExample/dense_keys_3&ParseExample/ParseExample/dense_keys_4&ParseExample/ParseExample/dense_keys_5&ParseExample/ParseExample/dense_keys_6&ParseExample/ParseExample/dense_keys_7&ParseExample/ParseExample/dense_keys_8&ParseExample/ParseExample/dense_keys_9'ParseExample/ParseExample/dense_keys_10'ParseExample/ParseExample/dense_keys_11'ParseExample/ParseExample/dense_keys_12'ParseExample/ParseExample/dense_keys_13'ParseExample/ParseExample/dense_keys_14'ParseExample/ParseExample/dense_keys_15'ParseExample/ParseExample/dense_keys_16'ParseExample/ParseExample/dense_keys_17'ParseExample/ParseExample/dense_keys_18'ParseExample/ParseExample/dense_keys_19'ParseExample/ParseExample/dense_keys_20'ParseExample/ParseExample/dense_keys_21'ParseExample/ParseExample/dense_keys_22'ParseExample/ParseExample/dense_keys_23'ParseExample/ParseExample/dense_keys_24'ParseExample/ParseExample/dense_keys_25'ParseExample/ParseExample/dense_keys_26'ParseExample/ParseExample/dense_keys_27'ParseExample/ParseExample/dense_keys_28'ParseExample/ParseExample/dense_keys_29'ParseExample/ParseExample/dense_keys_30'ParseExample/ParseExample/dense_keys_31'ParseExample/ParseExample/dense_keys_32'ParseExample/ParseExample/dense_keys_33'ParseExample/ParseExample/dense_keys_34'ParseExample/ParseExample/dense_keys_35'ParseExample/ParseExample/dense_keys_36'ParseExample/ParseExample/dense_keys_37'ParseExample/ParseExample/dense_keys_38ParseExample/ConstParseExample/Const_1ParseExample/Const_2ParseExample/Const_3ParseExample/Const_4ParseExample/Const_5ParseExample/Const_6ParseExample/Const_7ParseExample/Const_8ParseExample/Const_9ParseExample/Const_10ParseExample/Const_11ParseExample/Const_12ParseExample/Const_13ParseExample/Const_14ParseExample/Const_15ParseExample/Const_16ParseExample/Const_17ParseExample/Const_18ParseExample/Const_19ParseExample/Const_20ParseExample/Const_21ParseExample/Const_22ParseExample/Const_23ParseExample/Const_24ParseExample/Const_25ParseExample/Const_26ParseExample/Const_27ParseExample/Const_28ParseExample/Const_29ParseExample/Const_30ParseExample/Const_31ParseExample/Const_32ParseExample/Const_33ParseExample/Const_34ParseExample/Const_35ParseExample/Const_36ParseExample/Const_37ParseExample/Const_38*
Nsparse *°
dense_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : *
sparse_types
 *5
Tdense+
)2'*
Ndense'*ő
_output_shapesâ
ß: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 
w
&linear/linear_model/left-elbow-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
~
4linear/linear_model/left-elbow-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/left-elbow-c/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

6linear/linear_model/left-elbow-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/left-elbow-c/strided_sliceStridedSlice&linear/linear_model/left-elbow-c/Shape4linear/linear_model/left-elbow-c/strided_slice/stack6linear/linear_model/left-elbow-c/strided_slice/stack_16linear/linear_model/left-elbow-c/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
0linear/linear_model/left-elbow-c/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ň
.linear/linear_model/left-elbow-c/Reshape/shapePack.linear/linear_model/left-elbow-c/strided_slice0linear/linear_model/left-elbow-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ł
(linear/linear_model/left-elbow-c/ReshapeReshapeParseExample/ParseExample.linear/linear_model/left-elbow-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/left-elbow-c/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/left-elbow-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/left-elbow-c/weights/part_0
VariableV2*
shared_name *B
_class8
64loc:@linear/linear_model/left-elbow-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ę
6linear/linear_model/left-elbow-c/weights/part_0/AssignAssign/linear/linear_model/left-elbow-c/weights/part_0Alinear/linear_model/left-elbow-c/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-c/weights/part_0
Ţ
4linear/linear_model/left-elbow-c/weights/part_0/readIdentity/linear/linear_model/left-elbow-c/weights/part_0*
_output_shapes

:*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-c/weights/part_0

(linear/linear_model/left-elbow-c/weightsIdentity4linear/linear_model/left-elbow-c/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/left-elbow-c/weighted_sumMatMul(linear/linear_model/left-elbow-c/Reshape(linear/linear_model/left-elbow-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
w
&linear/linear_model/left-elbow-x/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
~
4linear/linear_model/left-elbow-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/left-elbow-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/left-elbow-x/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

.linear/linear_model/left-elbow-x/strided_sliceStridedSlice&linear/linear_model/left-elbow-x/Shape4linear/linear_model/left-elbow-x/strided_slice/stack6linear/linear_model/left-elbow-x/strided_slice/stack_16linear/linear_model/left-elbow-x/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
r
0linear/linear_model/left-elbow-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/left-elbow-x/Reshape/shapePack.linear/linear_model/left-elbow-x/strided_slice0linear/linear_model/left-elbow-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ľ
(linear/linear_model/left-elbow-x/ReshapeReshapeParseExample/ParseExample:1.linear/linear_model/left-elbow-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/left-elbow-x/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/left-elbow-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/left-elbow-x/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/left-elbow-x/weights/part_0*
	container *
shape
:
Ę
6linear/linear_model/left-elbow-x/weights/part_0/AssignAssign/linear/linear_model/left-elbow-x/weights/part_0Alinear/linear_model/left-elbow-x/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-x/weights/part_0
Ţ
4linear/linear_model/left-elbow-x/weights/part_0/readIdentity/linear/linear_model/left-elbow-x/weights/part_0*
_output_shapes

:*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-x/weights/part_0

(linear/linear_model/left-elbow-x/weightsIdentity4linear/linear_model/left-elbow-x/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/left-elbow-x/weighted_sumMatMul(linear/linear_model/left-elbow-x/Reshape(linear/linear_model/left-elbow-x/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
w
&linear/linear_model/left-elbow-y/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
~
4linear/linear_model/left-elbow-y/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

6linear/linear_model/left-elbow-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/left-elbow-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/left-elbow-y/strided_sliceStridedSlice&linear/linear_model/left-elbow-y/Shape4linear/linear_model/left-elbow-y/strided_slice/stack6linear/linear_model/left-elbow-y/strided_slice/stack_16linear/linear_model/left-elbow-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
0linear/linear_model/left-elbow-y/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ň
.linear/linear_model/left-elbow-y/Reshape/shapePack.linear/linear_model/left-elbow-y/strided_slice0linear/linear_model/left-elbow-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ľ
(linear/linear_model/left-elbow-y/ReshapeReshapeParseExample/ParseExample:2.linear/linear_model/left-elbow-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/left-elbow-y/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/left-elbow-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/left-elbow-y/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/left-elbow-y/weights/part_0*
	container *
shape
:
Ę
6linear/linear_model/left-elbow-y/weights/part_0/AssignAssign/linear/linear_model/left-elbow-y/weights/part_0Alinear/linear_model/left-elbow-y/weights/part_0/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-y/weights/part_0*
validate_shape(*
_output_shapes

:
Ţ
4linear/linear_model/left-elbow-y/weights/part_0/readIdentity/linear/linear_model/left-elbow-y/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-y/weights/part_0*
_output_shapes

:

(linear/linear_model/left-elbow-y/weightsIdentity4linear/linear_model/left-elbow-y/weights/part_0/read*
_output_shapes

:*
T0
Ř
-linear/linear_model/left-elbow-y/weighted_sumMatMul(linear/linear_model/left-elbow-y/Reshape(linear/linear_model/left-elbow-y/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
v
%linear/linear_model/left-foot-c/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/left-foot-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/left-foot-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-foot-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-foot-c/strided_sliceStridedSlice%linear/linear_model/left-foot-c/Shape3linear/linear_model/left-foot-c/strided_slice/stack5linear/linear_model/left-foot-c/strided_slice/stack_15linear/linear_model/left-foot-c/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
q
/linear/linear_model/left-foot-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-foot-c/Reshape/shapePack-linear/linear_model/left-foot-c/strided_slice/linear/linear_model/left-foot-c/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ł
'linear/linear_model/left-foot-c/ReshapeReshapeParseExample/ParseExample:3-linear/linear_model/left-foot-c/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ř
@linear/linear_model/left-foot-c/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-foot-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-foot-c/weights/part_0
VariableV2*A
_class7
53loc:@linear/linear_model/left-foot-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
Ć
5linear/linear_model/left-foot-c/weights/part_0/AssignAssign.linear/linear_model/left-foot-c/weights/part_0@linear/linear_model/left-foot-c/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-c/weights/part_0
Ű
3linear/linear_model/left-foot-c/weights/part_0/readIdentity.linear/linear_model/left-foot-c/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-foot-c/weights/part_0*
_output_shapes

:

'linear/linear_model/left-foot-c/weightsIdentity3linear/linear_model/left-foot-c/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-foot-c/weighted_sumMatMul'linear/linear_model/left-foot-c/Reshape'linear/linear_model/left-foot-c/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
v
%linear/linear_model/left-foot-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/left-foot-x/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

5linear/linear_model/left-foot-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-foot-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-foot-x/strided_sliceStridedSlice%linear/linear_model/left-foot-x/Shape3linear/linear_model/left-foot-x/strided_slice/stack5linear/linear_model/left-foot-x/strided_slice/stack_15linear/linear_model/left-foot-x/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
/linear/linear_model/left-foot-x/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ď
-linear/linear_model/left-foot-x/Reshape/shapePack-linear/linear_model/left-foot-x/strided_slice/linear/linear_model/left-foot-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ł
'linear/linear_model/left-foot-x/ReshapeReshapeParseExample/ParseExample:4-linear/linear_model/left-foot-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-foot-x/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-foot-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-foot-x/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *A
_class7
53loc:@linear/linear_model/left-foot-x/weights/part_0*
	container *
shape
:
Ć
5linear/linear_model/left-foot-x/weights/part_0/AssignAssign.linear/linear_model/left-foot-x/weights/part_0@linear/linear_model/left-foot-x/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-x/weights/part_0
Ű
3linear/linear_model/left-foot-x/weights/part_0/readIdentity.linear/linear_model/left-foot-x/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-foot-x/weights/part_0*
_output_shapes

:

'linear/linear_model/left-foot-x/weightsIdentity3linear/linear_model/left-foot-x/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-foot-x/weighted_sumMatMul'linear/linear_model/left-foot-x/Reshape'linear/linear_model/left-foot-x/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
v
%linear/linear_model/left-foot-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/left-foot-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/left-foot-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-foot-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-foot-y/strided_sliceStridedSlice%linear/linear_model/left-foot-y/Shape3linear/linear_model/left-foot-y/strided_slice/stack5linear/linear_model/left-foot-y/strided_slice/stack_15linear/linear_model/left-foot-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
/linear/linear_model/left-foot-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-foot-y/Reshape/shapePack-linear/linear_model/left-foot-y/strided_slice/linear/linear_model/left-foot-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ł
'linear/linear_model/left-foot-y/ReshapeReshapeParseExample/ParseExample:5-linear/linear_model/left-foot-y/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ř
@linear/linear_model/left-foot-y/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-foot-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-foot-y/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *A
_class7
53loc:@linear/linear_model/left-foot-y/weights/part_0*
	container *
shape
:
Ć
5linear/linear_model/left-foot-y/weights/part_0/AssignAssign.linear/linear_model/left-foot-y/weights/part_0@linear/linear_model/left-foot-y/weights/part_0/Initializer/zeros*
T0*A
_class7
53loc:@linear/linear_model/left-foot-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
Ű
3linear/linear_model/left-foot-y/weights/part_0/readIdentity.linear/linear_model/left-foot-y/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-foot-y/weights/part_0*
_output_shapes

:

'linear/linear_model/left-foot-y/weightsIdentity3linear/linear_model/left-foot-y/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-foot-y/weighted_sumMatMul'linear/linear_model/left-foot-y/Reshape'linear/linear_model/left-foot-y/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
v
%linear/linear_model/left-hand-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
}
3linear/linear_model/left-hand-c/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

5linear/linear_model/left-hand-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-hand-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-hand-c/strided_sliceStridedSlice%linear/linear_model/left-hand-c/Shape3linear/linear_model/left-hand-c/strided_slice/stack5linear/linear_model/left-hand-c/strided_slice/stack_15linear/linear_model/left-hand-c/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
q
/linear/linear_model/left-hand-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-hand-c/Reshape/shapePack-linear/linear_model/left-hand-c/strided_slice/linear/linear_model/left-hand-c/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ł
'linear/linear_model/left-hand-c/ReshapeReshapeParseExample/ParseExample:6-linear/linear_model/left-hand-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-hand-c/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-hand-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-hand-c/weights/part_0
VariableV2*
shared_name *A
_class7
53loc:@linear/linear_model/left-hand-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ć
5linear/linear_model/left-hand-c/weights/part_0/AssignAssign.linear/linear_model/left-hand-c/weights/part_0@linear/linear_model/left-hand-c/weights/part_0/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-c/weights/part_0*
validate_shape(*
_output_shapes

:
Ű
3linear/linear_model/left-hand-c/weights/part_0/readIdentity.linear/linear_model/left-hand-c/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-hand-c/weights/part_0*
_output_shapes

:

'linear/linear_model/left-hand-c/weightsIdentity3linear/linear_model/left-hand-c/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-hand-c/weighted_sumMatMul'linear/linear_model/left-hand-c/Reshape'linear/linear_model/left-hand-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
v
%linear/linear_model/left-hand-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/left-hand-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/left-hand-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-hand-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-hand-x/strided_sliceStridedSlice%linear/linear_model/left-hand-x/Shape3linear/linear_model/left-hand-x/strided_slice/stack5linear/linear_model/left-hand-x/strided_slice/stack_15linear/linear_model/left-hand-x/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
/linear/linear_model/left-hand-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-hand-x/Reshape/shapePack-linear/linear_model/left-hand-x/strided_slice/linear/linear_model/left-hand-x/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ł
'linear/linear_model/left-hand-x/ReshapeReshapeParseExample/ParseExample:7-linear/linear_model/left-hand-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-hand-x/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-hand-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-hand-x/weights/part_0
VariableV2*
shared_name *A
_class7
53loc:@linear/linear_model/left-hand-x/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ć
5linear/linear_model/left-hand-x/weights/part_0/AssignAssign.linear/linear_model/left-hand-x/weights/part_0@linear/linear_model/left-hand-x/weights/part_0/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-x/weights/part_0*
validate_shape(*
_output_shapes

:
Ű
3linear/linear_model/left-hand-x/weights/part_0/readIdentity.linear/linear_model/left-hand-x/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-hand-x/weights/part_0*
_output_shapes

:

'linear/linear_model/left-hand-x/weightsIdentity3linear/linear_model/left-hand-x/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-hand-x/weighted_sumMatMul'linear/linear_model/left-hand-x/Reshape'linear/linear_model/left-hand-x/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
v
%linear/linear_model/left-hand-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/left-hand-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/left-hand-y/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5linear/linear_model/left-hand-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-hand-y/strided_sliceStridedSlice%linear/linear_model/left-hand-y/Shape3linear/linear_model/left-hand-y/strided_slice/stack5linear/linear_model/left-hand-y/strided_slice/stack_15linear/linear_model/left-hand-y/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
q
/linear/linear_model/left-hand-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-hand-y/Reshape/shapePack-linear/linear_model/left-hand-y/strided_slice/linear/linear_model/left-hand-y/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ł
'linear/linear_model/left-hand-y/ReshapeReshapeParseExample/ParseExample:8-linear/linear_model/left-hand-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-hand-y/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-hand-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-hand-y/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *A
_class7
53loc:@linear/linear_model/left-hand-y/weights/part_0*
	container *
shape
:
Ć
5linear/linear_model/left-hand-y/weights/part_0/AssignAssign.linear/linear_model/left-hand-y/weights/part_0@linear/linear_model/left-hand-y/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-y/weights/part_0
Ű
3linear/linear_model/left-hand-y/weights/part_0/readIdentity.linear/linear_model/left-hand-y/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-hand-y/weights/part_0*
_output_shapes

:

'linear/linear_model/left-hand-y/weightsIdentity3linear/linear_model/left-hand-y/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-hand-y/weighted_sumMatMul'linear/linear_model/left-hand-y/Reshape'linear/linear_model/left-hand-y/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
u
$linear/linear_model/left-hip-c/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
|
2linear/linear_model/left-hip-c/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
~
4linear/linear_model/left-hip-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4linear/linear_model/left-hip-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,linear/linear_model/left-hip-c/strided_sliceStridedSlice$linear/linear_model/left-hip-c/Shape2linear/linear_model/left-hip-c/strided_slice/stack4linear/linear_model/left-hip-c/strided_slice/stack_14linear/linear_model/left-hip-c/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
p
.linear/linear_model/left-hip-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ě
,linear/linear_model/left-hip-c/Reshape/shapePack,linear/linear_model/left-hip-c/strided_slice.linear/linear_model/left-hip-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ą
&linear/linear_model/left-hip-c/ReshapeReshapeParseExample/ParseExample:9,linear/linear_model/left-hip-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ö
?linear/linear_model/left-hip-c/weights/part_0/Initializer/zerosConst*@
_class6
42loc:@linear/linear_model/left-hip-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ă
-linear/linear_model/left-hip-c/weights/part_0
VariableV2*
shared_name *@
_class6
42loc:@linear/linear_model/left-hip-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Â
4linear/linear_model/left-hip-c/weights/part_0/AssignAssign-linear/linear_model/left-hip-c/weights/part_0?linear/linear_model/left-hip-c/weights/part_0/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/left-hip-c/weights/part_0*
validate_shape(*
_output_shapes

:
Ř
2linear/linear_model/left-hip-c/weights/part_0/readIdentity-linear/linear_model/left-hip-c/weights/part_0*
T0*@
_class6
42loc:@linear/linear_model/left-hip-c/weights/part_0*
_output_shapes

:

&linear/linear_model/left-hip-c/weightsIdentity2linear/linear_model/left-hip-c/weights/part_0/read*
T0*
_output_shapes

:
Ň
+linear/linear_model/left-hip-c/weighted_sumMatMul&linear/linear_model/left-hip-c/Reshape&linear/linear_model/left-hip-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
u
$linear/linear_model/left-hip-x/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
|
2linear/linear_model/left-hip-x/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
~
4linear/linear_model/left-hip-x/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
~
4linear/linear_model/left-hip-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,linear/linear_model/left-hip-x/strided_sliceStridedSlice$linear/linear_model/left-hip-x/Shape2linear/linear_model/left-hip-x/strided_slice/stack4linear/linear_model/left-hip-x/strided_slice/stack_14linear/linear_model/left-hip-x/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
p
.linear/linear_model/left-hip-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ě
,linear/linear_model/left-hip-x/Reshape/shapePack,linear/linear_model/left-hip-x/strided_slice.linear/linear_model/left-hip-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
˛
&linear/linear_model/left-hip-x/ReshapeReshapeParseExample/ParseExample:10,linear/linear_model/left-hip-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ö
?linear/linear_model/left-hip-x/weights/part_0/Initializer/zerosConst*@
_class6
42loc:@linear/linear_model/left-hip-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ă
-linear/linear_model/left-hip-x/weights/part_0
VariableV2*@
_class6
42loc:@linear/linear_model/left-hip-x/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
Â
4linear/linear_model/left-hip-x/weights/part_0/AssignAssign-linear/linear_model/left-hip-x/weights/part_0?linear/linear_model/left-hip-x/weights/part_0/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/left-hip-x/weights/part_0*
validate_shape(*
_output_shapes

:
Ř
2linear/linear_model/left-hip-x/weights/part_0/readIdentity-linear/linear_model/left-hip-x/weights/part_0*
T0*@
_class6
42loc:@linear/linear_model/left-hip-x/weights/part_0*
_output_shapes

:

&linear/linear_model/left-hip-x/weightsIdentity2linear/linear_model/left-hip-x/weights/part_0/read*
T0*
_output_shapes

:
Ň
+linear/linear_model/left-hip-x/weighted_sumMatMul&linear/linear_model/left-hip-x/Reshape&linear/linear_model/left-hip-x/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
u
$linear/linear_model/left-hip-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
|
2linear/linear_model/left-hip-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
~
4linear/linear_model/left-hip-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
~
4linear/linear_model/left-hip-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

,linear/linear_model/left-hip-y/strided_sliceStridedSlice$linear/linear_model/left-hip-y/Shape2linear/linear_model/left-hip-y/strided_slice/stack4linear/linear_model/left-hip-y/strided_slice/stack_14linear/linear_model/left-hip-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
p
.linear/linear_model/left-hip-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ě
,linear/linear_model/left-hip-y/Reshape/shapePack,linear/linear_model/left-hip-y/strided_slice.linear/linear_model/left-hip-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
˛
&linear/linear_model/left-hip-y/ReshapeReshapeParseExample/ParseExample:11,linear/linear_model/left-hip-y/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ö
?linear/linear_model/left-hip-y/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*@
_class6
42loc:@linear/linear_model/left-hip-y/weights/part_0*
valueB*    
ă
-linear/linear_model/left-hip-y/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *@
_class6
42loc:@linear/linear_model/left-hip-y/weights/part_0*
	container *
shape
:
Â
4linear/linear_model/left-hip-y/weights/part_0/AssignAssign-linear/linear_model/left-hip-y/weights/part_0?linear/linear_model/left-hip-y/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/left-hip-y/weights/part_0
Ř
2linear/linear_model/left-hip-y/weights/part_0/readIdentity-linear/linear_model/left-hip-y/weights/part_0*
T0*@
_class6
42loc:@linear/linear_model/left-hip-y/weights/part_0*
_output_shapes

:

&linear/linear_model/left-hip-y/weightsIdentity2linear/linear_model/left-hip-y/weights/part_0/read*
T0*
_output_shapes

:
Ň
+linear/linear_model/left-hip-y/weighted_sumMatMul&linear/linear_model/left-hip-y/Reshape&linear/linear_model/left-hip-y/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
v
%linear/linear_model/left-knee-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
}
3linear/linear_model/left-knee-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/left-knee-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-knee-c/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

-linear/linear_model/left-knee-c/strided_sliceStridedSlice%linear/linear_model/left-knee-c/Shape3linear/linear_model/left-knee-c/strided_slice/stack5linear/linear_model/left-knee-c/strided_slice/stack_15linear/linear_model/left-knee-c/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
/linear/linear_model/left-knee-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-knee-c/Reshape/shapePack-linear/linear_model/left-knee-c/strided_slice/linear/linear_model/left-knee-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
´
'linear/linear_model/left-knee-c/ReshapeReshapeParseExample/ParseExample:12-linear/linear_model/left-knee-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-knee-c/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*A
_class7
53loc:@linear/linear_model/left-knee-c/weights/part_0*
valueB*    
ĺ
.linear/linear_model/left-knee-c/weights/part_0
VariableV2*
shared_name *A
_class7
53loc:@linear/linear_model/left-knee-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ć
5linear/linear_model/left-knee-c/weights/part_0/AssignAssign.linear/linear_model/left-knee-c/weights/part_0@linear/linear_model/left-knee-c/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-c/weights/part_0
Ű
3linear/linear_model/left-knee-c/weights/part_0/readIdentity.linear/linear_model/left-knee-c/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-knee-c/weights/part_0*
_output_shapes

:

'linear/linear_model/left-knee-c/weightsIdentity3linear/linear_model/left-knee-c/weights/part_0/read*
_output_shapes

:*
T0
Ő
,linear/linear_model/left-knee-c/weighted_sumMatMul'linear/linear_model/left-knee-c/Reshape'linear/linear_model/left-knee-c/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
v
%linear/linear_model/left-knee-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/left-knee-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/left-knee-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-knee-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-knee-x/strided_sliceStridedSlice%linear/linear_model/left-knee-x/Shape3linear/linear_model/left-knee-x/strided_slice/stack5linear/linear_model/left-knee-x/strided_slice/stack_15linear/linear_model/left-knee-x/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
q
/linear/linear_model/left-knee-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-knee-x/Reshape/shapePack-linear/linear_model/left-knee-x/strided_slice/linear/linear_model/left-knee-x/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
´
'linear/linear_model/left-knee-x/ReshapeReshapeParseExample/ParseExample:13-linear/linear_model/left-knee-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-knee-x/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*A
_class7
53loc:@linear/linear_model/left-knee-x/weights/part_0*
valueB*    
ĺ
.linear/linear_model/left-knee-x/weights/part_0
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *A
_class7
53loc:@linear/linear_model/left-knee-x/weights/part_0
Ć
5linear/linear_model/left-knee-x/weights/part_0/AssignAssign.linear/linear_model/left-knee-x/weights/part_0@linear/linear_model/left-knee-x/weights/part_0/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-x/weights/part_0*
validate_shape(*
_output_shapes

:
Ű
3linear/linear_model/left-knee-x/weights/part_0/readIdentity.linear/linear_model/left-knee-x/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-knee-x/weights/part_0*
_output_shapes

:

'linear/linear_model/left-knee-x/weightsIdentity3linear/linear_model/left-knee-x/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/left-knee-x/weighted_sumMatMul'linear/linear_model/left-knee-x/Reshape'linear/linear_model/left-knee-x/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
v
%linear/linear_model/left-knee-y/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
}
3linear/linear_model/left-knee-y/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

5linear/linear_model/left-knee-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/left-knee-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/left-knee-y/strided_sliceStridedSlice%linear/linear_model/left-knee-y/Shape3linear/linear_model/left-knee-y/strided_slice/stack5linear/linear_model/left-knee-y/strided_slice/stack_15linear/linear_model/left-knee-y/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
q
/linear/linear_model/left-knee-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/left-knee-y/Reshape/shapePack-linear/linear_model/left-knee-y/strided_slice/linear/linear_model/left-knee-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
´
'linear/linear_model/left-knee-y/ReshapeReshapeParseExample/ParseExample:14-linear/linear_model/left-knee-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/left-knee-y/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/left-knee-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/left-knee-y/weights/part_0
VariableV2*
shared_name *A
_class7
53loc:@linear/linear_model/left-knee-y/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ć
5linear/linear_model/left-knee-y/weights/part_0/AssignAssign.linear/linear_model/left-knee-y/weights/part_0@linear/linear_model/left-knee-y/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-y/weights/part_0
Ű
3linear/linear_model/left-knee-y/weights/part_0/readIdentity.linear/linear_model/left-knee-y/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/left-knee-y/weights/part_0*
_output_shapes

:

'linear/linear_model/left-knee-y/weightsIdentity3linear/linear_model/left-knee-y/weights/part_0/read*
_output_shapes

:*
T0
Ő
,linear/linear_model/left-knee-y/weighted_sumMatMul'linear/linear_model/left-knee-y/Reshape'linear/linear_model/left-knee-y/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
z
)linear/linear_model/left-shoulder-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       

7linear/linear_model/left-shoulder-c/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

9linear/linear_model/left-shoulder-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9linear/linear_model/left-shoulder-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1linear/linear_model/left-shoulder-c/strided_sliceStridedSlice)linear/linear_model/left-shoulder-c/Shape7linear/linear_model/left-shoulder-c/strided_slice/stack9linear/linear_model/left-shoulder-c/strided_slice/stack_19linear/linear_model/left-shoulder-c/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
u
3linear/linear_model/left-shoulder-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ű
1linear/linear_model/left-shoulder-c/Reshape/shapePack1linear/linear_model/left-shoulder-c/strided_slice3linear/linear_model/left-shoulder-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ź
+linear/linear_model/left-shoulder-c/ReshapeReshapeParseExample/ParseExample:151linear/linear_model/left-shoulder-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
ŕ
Dlinear/linear_model/left-shoulder-c/weights/part_0/Initializer/zerosConst*E
_class;
97loc:@linear/linear_model/left-shoulder-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
í
2linear/linear_model/left-shoulder-c/weights/part_0
VariableV2*
shared_name *E
_class;
97loc:@linear/linear_model/left-shoulder-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ö
9linear/linear_model/left-shoulder-c/weights/part_0/AssignAssign2linear/linear_model/left-shoulder-c/weights/part_0Dlinear/linear_model/left-shoulder-c/weights/part_0/Initializer/zeros*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
ç
7linear/linear_model/left-shoulder-c/weights/part_0/readIdentity2linear/linear_model/left-shoulder-c/weights/part_0*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-c/weights/part_0*
_output_shapes

:

+linear/linear_model/left-shoulder-c/weightsIdentity7linear/linear_model/left-shoulder-c/weights/part_0/read*
_output_shapes

:*
T0
á
0linear/linear_model/left-shoulder-c/weighted_sumMatMul+linear/linear_model/left-shoulder-c/Reshape+linear/linear_model/left-shoulder-c/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
z
)linear/linear_model/left-shoulder-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:

7linear/linear_model/left-shoulder-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9linear/linear_model/left-shoulder-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9linear/linear_model/left-shoulder-x/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
­
1linear/linear_model/left-shoulder-x/strided_sliceStridedSlice)linear/linear_model/left-shoulder-x/Shape7linear/linear_model/left-shoulder-x/strided_slice/stack9linear/linear_model/left-shoulder-x/strided_slice/stack_19linear/linear_model/left-shoulder-x/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
u
3linear/linear_model/left-shoulder-x/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ű
1linear/linear_model/left-shoulder-x/Reshape/shapePack1linear/linear_model/left-shoulder-x/strided_slice3linear/linear_model/left-shoulder-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ź
+linear/linear_model/left-shoulder-x/ReshapeReshapeParseExample/ParseExample:161linear/linear_model/left-shoulder-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
ŕ
Dlinear/linear_model/left-shoulder-x/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*E
_class;
97loc:@linear/linear_model/left-shoulder-x/weights/part_0*
valueB*    
í
2linear/linear_model/left-shoulder-x/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *E
_class;
97loc:@linear/linear_model/left-shoulder-x/weights/part_0*
	container *
shape
:
Ö
9linear/linear_model/left-shoulder-x/weights/part_0/AssignAssign2linear/linear_model/left-shoulder-x/weights/part_0Dlinear/linear_model/left-shoulder-x/weights/part_0/Initializer/zeros*
use_locking(*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-x/weights/part_0*
validate_shape(*
_output_shapes

:
ç
7linear/linear_model/left-shoulder-x/weights/part_0/readIdentity2linear/linear_model/left-shoulder-x/weights/part_0*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-x/weights/part_0*
_output_shapes

:

+linear/linear_model/left-shoulder-x/weightsIdentity7linear/linear_model/left-shoulder-x/weights/part_0/read*
T0*
_output_shapes

:
á
0linear/linear_model/left-shoulder-x/weighted_sumMatMul+linear/linear_model/left-shoulder-x/Reshape+linear/linear_model/left-shoulder-x/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
z
)linear/linear_model/left-shoulder-y/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       

7linear/linear_model/left-shoulder-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

9linear/linear_model/left-shoulder-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

9linear/linear_model/left-shoulder-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
­
1linear/linear_model/left-shoulder-y/strided_sliceStridedSlice)linear/linear_model/left-shoulder-y/Shape7linear/linear_model/left-shoulder-y/strided_slice/stack9linear/linear_model/left-shoulder-y/strided_slice/stack_19linear/linear_model/left-shoulder-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
u
3linear/linear_model/left-shoulder-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ű
1linear/linear_model/left-shoulder-y/Reshape/shapePack1linear/linear_model/left-shoulder-y/strided_slice3linear/linear_model/left-shoulder-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ź
+linear/linear_model/left-shoulder-y/ReshapeReshapeParseExample/ParseExample:171linear/linear_model/left-shoulder-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
ŕ
Dlinear/linear_model/left-shoulder-y/weights/part_0/Initializer/zerosConst*E
_class;
97loc:@linear/linear_model/left-shoulder-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
í
2linear/linear_model/left-shoulder-y/weights/part_0
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *E
_class;
97loc:@linear/linear_model/left-shoulder-y/weights/part_0*
	container 
Ö
9linear/linear_model/left-shoulder-y/weights/part_0/AssignAssign2linear/linear_model/left-shoulder-y/weights/part_0Dlinear/linear_model/left-shoulder-y/weights/part_0/Initializer/zeros*
use_locking(*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-y/weights/part_0*
validate_shape(*
_output_shapes

:
ç
7linear/linear_model/left-shoulder-y/weights/part_0/readIdentity2linear/linear_model/left-shoulder-y/weights/part_0*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-y/weights/part_0*
_output_shapes

:

+linear/linear_model/left-shoulder-y/weightsIdentity7linear/linear_model/left-shoulder-y/weights/part_0/read*
T0*
_output_shapes

:
á
0linear/linear_model/left-shoulder-y/weighted_sumMatMul+linear/linear_model/left-shoulder-y/Reshape+linear/linear_model/left-shoulder-y/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
q
 linear/linear_model/neck-c/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
x
.linear/linear_model/neck-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0linear/linear_model/neck-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0linear/linear_model/neck-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(linear/linear_model/neck-c/strided_sliceStridedSlice linear/linear_model/neck-c/Shape.linear/linear_model/neck-c/strided_slice/stack0linear/linear_model/neck-c/strided_slice/stack_10linear/linear_model/neck-c/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
l
*linear/linear_model/neck-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
(linear/linear_model/neck-c/Reshape/shapePack(linear/linear_model/neck-c/strided_slice*linear/linear_model/neck-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
Ş
"linear/linear_model/neck-c/ReshapeReshapeParseExample/ParseExample:18(linear/linear_model/neck-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Î
;linear/linear_model/neck-c/weights/part_0/Initializer/zerosConst*<
_class2
0.loc:@linear/linear_model/neck-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
Ű
)linear/linear_model/neck-c/weights/part_0
VariableV2*
shared_name *<
_class2
0.loc:@linear/linear_model/neck-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
˛
0linear/linear_model/neck-c/weights/part_0/AssignAssign)linear/linear_model/neck-c/weights/part_0;linear/linear_model/neck-c/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-c/weights/part_0
Ě
.linear/linear_model/neck-c/weights/part_0/readIdentity)linear/linear_model/neck-c/weights/part_0*
_output_shapes

:*
T0*<
_class2
0.loc:@linear/linear_model/neck-c/weights/part_0

"linear/linear_model/neck-c/weightsIdentity.linear/linear_model/neck-c/weights/part_0/read*
T0*
_output_shapes

:
Ć
'linear/linear_model/neck-c/weighted_sumMatMul"linear/linear_model/neck-c/Reshape"linear/linear_model/neck-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
q
 linear/linear_model/neck-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
x
.linear/linear_model/neck-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
z
0linear/linear_model/neck-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
z
0linear/linear_model/neck-x/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

(linear/linear_model/neck-x/strided_sliceStridedSlice linear/linear_model/neck-x/Shape.linear/linear_model/neck-x/strided_slice/stack0linear/linear_model/neck-x/strided_slice/stack_10linear/linear_model/neck-x/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
l
*linear/linear_model/neck-x/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ŕ
(linear/linear_model/neck-x/Reshape/shapePack(linear/linear_model/neck-x/strided_slice*linear/linear_model/neck-x/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
Ş
"linear/linear_model/neck-x/ReshapeReshapeParseExample/ParseExample:19(linear/linear_model/neck-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Î
;linear/linear_model/neck-x/weights/part_0/Initializer/zerosConst*<
_class2
0.loc:@linear/linear_model/neck-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
Ű
)linear/linear_model/neck-x/weights/part_0
VariableV2*<
_class2
0.loc:@linear/linear_model/neck-x/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
˛
0linear/linear_model/neck-x/weights/part_0/AssignAssign)linear/linear_model/neck-x/weights/part_0;linear/linear_model/neck-x/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-x/weights/part_0
Ě
.linear/linear_model/neck-x/weights/part_0/readIdentity)linear/linear_model/neck-x/weights/part_0*
T0*<
_class2
0.loc:@linear/linear_model/neck-x/weights/part_0*
_output_shapes

:

"linear/linear_model/neck-x/weightsIdentity.linear/linear_model/neck-x/weights/part_0/read*
T0*
_output_shapes

:
Ć
'linear/linear_model/neck-x/weighted_sumMatMul"linear/linear_model/neck-x/Reshape"linear/linear_model/neck-x/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
q
 linear/linear_model/neck-y/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
x
.linear/linear_model/neck-y/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
z
0linear/linear_model/neck-y/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
z
0linear/linear_model/neck-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

(linear/linear_model/neck-y/strided_sliceStridedSlice linear/linear_model/neck-y/Shape.linear/linear_model/neck-y/strided_slice/stack0linear/linear_model/neck-y/strided_slice/stack_10linear/linear_model/neck-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
l
*linear/linear_model/neck-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ŕ
(linear/linear_model/neck-y/Reshape/shapePack(linear/linear_model/neck-y/strided_slice*linear/linear_model/neck-y/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
Ş
"linear/linear_model/neck-y/ReshapeReshapeParseExample/ParseExample:20(linear/linear_model/neck-y/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Î
;linear/linear_model/neck-y/weights/part_0/Initializer/zerosConst*<
_class2
0.loc:@linear/linear_model/neck-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
Ű
)linear/linear_model/neck-y/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *<
_class2
0.loc:@linear/linear_model/neck-y/weights/part_0*
	container *
shape
:
˛
0linear/linear_model/neck-y/weights/part_0/AssignAssign)linear/linear_model/neck-y/weights/part_0;linear/linear_model/neck-y/weights/part_0/Initializer/zeros*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-y/weights/part_0*
validate_shape(*
_output_shapes

:
Ě
.linear/linear_model/neck-y/weights/part_0/readIdentity)linear/linear_model/neck-y/weights/part_0*
T0*<
_class2
0.loc:@linear/linear_model/neck-y/weights/part_0*
_output_shapes

:

"linear/linear_model/neck-y/weightsIdentity.linear/linear_model/neck-y/weights/part_0/read*
T0*
_output_shapes

:
Ć
'linear/linear_model/neck-y/weighted_sumMatMul"linear/linear_model/neck-y/Reshape"linear/linear_model/neck-y/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
x
'linear/linear_model/right-elbow-c/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:

5linear/linear_model/right-elbow-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

7linear/linear_model/right-elbow-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

7linear/linear_model/right-elbow-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ł
/linear/linear_model/right-elbow-c/strided_sliceStridedSlice'linear/linear_model/right-elbow-c/Shape5linear/linear_model/right-elbow-c/strided_slice/stack7linear/linear_model/right-elbow-c/strided_slice/stack_17linear/linear_model/right-elbow-c/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
1linear/linear_model/right-elbow-c/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ő
/linear/linear_model/right-elbow-c/Reshape/shapePack/linear/linear_model/right-elbow-c/strided_slice1linear/linear_model/right-elbow-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
¸
)linear/linear_model/right-elbow-c/ReshapeReshapeParseExample/ParseExample:21/linear/linear_model/right-elbow-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ü
Blinear/linear_model/right-elbow-c/weights/part_0/Initializer/zerosConst*C
_class9
75loc:@linear/linear_model/right-elbow-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
é
0linear/linear_model/right-elbow-c/weights/part_0
VariableV2*
shared_name *C
_class9
75loc:@linear/linear_model/right-elbow-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Î
7linear/linear_model/right-elbow-c/weights/part_0/AssignAssign0linear/linear_model/right-elbow-c/weights/part_0Blinear/linear_model/right-elbow-c/weights/part_0/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-c/weights/part_0*
validate_shape(*
_output_shapes

:
á
5linear/linear_model/right-elbow-c/weights/part_0/readIdentity0linear/linear_model/right-elbow-c/weights/part_0*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-c/weights/part_0*
_output_shapes

:

)linear/linear_model/right-elbow-c/weightsIdentity5linear/linear_model/right-elbow-c/weights/part_0/read*
_output_shapes

:*
T0
Ű
.linear/linear_model/right-elbow-c/weighted_sumMatMul)linear/linear_model/right-elbow-c/Reshape)linear/linear_model/right-elbow-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
x
'linear/linear_model/right-elbow-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:

5linear/linear_model/right-elbow-x/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

7linear/linear_model/right-elbow-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

7linear/linear_model/right-elbow-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ł
/linear/linear_model/right-elbow-x/strided_sliceStridedSlice'linear/linear_model/right-elbow-x/Shape5linear/linear_model/right-elbow-x/strided_slice/stack7linear/linear_model/right-elbow-x/strided_slice/stack_17linear/linear_model/right-elbow-x/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
1linear/linear_model/right-elbow-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ő
/linear/linear_model/right-elbow-x/Reshape/shapePack/linear/linear_model/right-elbow-x/strided_slice1linear/linear_model/right-elbow-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
¸
)linear/linear_model/right-elbow-x/ReshapeReshapeParseExample/ParseExample:22/linear/linear_model/right-elbow-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ü
Blinear/linear_model/right-elbow-x/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*C
_class9
75loc:@linear/linear_model/right-elbow-x/weights/part_0*
valueB*    
é
0linear/linear_model/right-elbow-x/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *C
_class9
75loc:@linear/linear_model/right-elbow-x/weights/part_0*
	container *
shape
:
Î
7linear/linear_model/right-elbow-x/weights/part_0/AssignAssign0linear/linear_model/right-elbow-x/weights/part_0Blinear/linear_model/right-elbow-x/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-x/weights/part_0
á
5linear/linear_model/right-elbow-x/weights/part_0/readIdentity0linear/linear_model/right-elbow-x/weights/part_0*
_output_shapes

:*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-x/weights/part_0

)linear/linear_model/right-elbow-x/weightsIdentity5linear/linear_model/right-elbow-x/weights/part_0/read*
T0*
_output_shapes

:
Ű
.linear/linear_model/right-elbow-x/weighted_sumMatMul)linear/linear_model/right-elbow-x/Reshape)linear/linear_model/right-elbow-x/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
x
'linear/linear_model/right-elbow-y/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       

5linear/linear_model/right-elbow-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

7linear/linear_model/right-elbow-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

7linear/linear_model/right-elbow-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ł
/linear/linear_model/right-elbow-y/strided_sliceStridedSlice'linear/linear_model/right-elbow-y/Shape5linear/linear_model/right-elbow-y/strided_slice/stack7linear/linear_model/right-elbow-y/strided_slice/stack_17linear/linear_model/right-elbow-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
s
1linear/linear_model/right-elbow-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ő
/linear/linear_model/right-elbow-y/Reshape/shapePack/linear/linear_model/right-elbow-y/strided_slice1linear/linear_model/right-elbow-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
¸
)linear/linear_model/right-elbow-y/ReshapeReshapeParseExample/ParseExample:23/linear/linear_model/right-elbow-y/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ü
Blinear/linear_model/right-elbow-y/weights/part_0/Initializer/zerosConst*C
_class9
75loc:@linear/linear_model/right-elbow-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
é
0linear/linear_model/right-elbow-y/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *C
_class9
75loc:@linear/linear_model/right-elbow-y/weights/part_0*
	container *
shape
:
Î
7linear/linear_model/right-elbow-y/weights/part_0/AssignAssign0linear/linear_model/right-elbow-y/weights/part_0Blinear/linear_model/right-elbow-y/weights/part_0/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-y/weights/part_0*
validate_shape(*
_output_shapes

:
á
5linear/linear_model/right-elbow-y/weights/part_0/readIdentity0linear/linear_model/right-elbow-y/weights/part_0*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-y/weights/part_0*
_output_shapes

:

)linear/linear_model/right-elbow-y/weightsIdentity5linear/linear_model/right-elbow-y/weights/part_0/read*
T0*
_output_shapes

:
Ű
.linear/linear_model/right-elbow-y/weighted_sumMatMul)linear/linear_model/right-elbow-y/Reshape)linear/linear_model/right-elbow-y/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
w
&linear/linear_model/right-foot-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
~
4linear/linear_model/right-foot-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/right-foot-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-foot-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-foot-c/strided_sliceStridedSlice&linear/linear_model/right-foot-c/Shape4linear/linear_model/right-foot-c/strided_slice/stack6linear/linear_model/right-foot-c/strided_slice/stack_16linear/linear_model/right-foot-c/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
0linear/linear_model/right-foot-c/Reshape/shape/1Const*
dtype0*
_output_shapes
: *
value	B :
Ň
.linear/linear_model/right-foot-c/Reshape/shapePack.linear/linear_model/right-foot-c/strided_slice0linear/linear_model/right-foot-c/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ś
(linear/linear_model/right-foot-c/ReshapeReshapeParseExample/ParseExample:24.linear/linear_model/right-foot-c/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ú
Alinear/linear_model/right-foot-c/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-foot-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-foot-c/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/right-foot-c/weights/part_0*
	container *
shape
:
Ę
6linear/linear_model/right-foot-c/weights/part_0/AssignAssign/linear/linear_model/right-foot-c/weights/part_0Alinear/linear_model/right-foot-c/weights/part_0/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-c/weights/part_0*
validate_shape(*
_output_shapes

:
Ţ
4linear/linear_model/right-foot-c/weights/part_0/readIdentity/linear/linear_model/right-foot-c/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-foot-c/weights/part_0*
_output_shapes

:

(linear/linear_model/right-foot-c/weightsIdentity4linear/linear_model/right-foot-c/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/right-foot-c/weighted_sumMatMul(linear/linear_model/right-foot-c/Reshape(linear/linear_model/right-foot-c/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
w
&linear/linear_model/right-foot-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
~
4linear/linear_model/right-foot-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/right-foot-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-foot-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-foot-x/strided_sliceStridedSlice&linear/linear_model/right-foot-x/Shape4linear/linear_model/right-foot-x/strided_slice/stack6linear/linear_model/right-foot-x/strided_slice/stack_16linear/linear_model/right-foot-x/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
0linear/linear_model/right-foot-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-foot-x/Reshape/shapePack.linear/linear_model/right-foot-x/strided_slice0linear/linear_model/right-foot-x/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ś
(linear/linear_model/right-foot-x/ReshapeReshapeParseExample/ParseExample:25.linear/linear_model/right-foot-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-foot-x/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-foot-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-foot-x/weights/part_0
VariableV2*
shared_name *B
_class8
64loc:@linear/linear_model/right-foot-x/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ę
6linear/linear_model/right-foot-x/weights/part_0/AssignAssign/linear/linear_model/right-foot-x/weights/part_0Alinear/linear_model/right-foot-x/weights/part_0/Initializer/zeros*
T0*B
_class8
64loc:@linear/linear_model/right-foot-x/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
Ţ
4linear/linear_model/right-foot-x/weights/part_0/readIdentity/linear/linear_model/right-foot-x/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-foot-x/weights/part_0*
_output_shapes

:

(linear/linear_model/right-foot-x/weightsIdentity4linear/linear_model/right-foot-x/weights/part_0/read*
_output_shapes

:*
T0
Ř
-linear/linear_model/right-foot-x/weighted_sumMatMul(linear/linear_model/right-foot-x/Reshape(linear/linear_model/right-foot-x/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
w
&linear/linear_model/right-foot-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
~
4linear/linear_model/right-foot-y/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

6linear/linear_model/right-foot-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-foot-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-foot-y/strided_sliceStridedSlice&linear/linear_model/right-foot-y/Shape4linear/linear_model/right-foot-y/strided_slice/stack6linear/linear_model/right-foot-y/strided_slice/stack_16linear/linear_model/right-foot-y/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
0linear/linear_model/right-foot-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-foot-y/Reshape/shapePack.linear/linear_model/right-foot-y/strided_slice0linear/linear_model/right-foot-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ś
(linear/linear_model/right-foot-y/ReshapeReshapeParseExample/ParseExample:26.linear/linear_model/right-foot-y/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ú
Alinear/linear_model/right-foot-y/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-foot-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-foot-y/weights/part_0
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/right-foot-y/weights/part_0
Ę
6linear/linear_model/right-foot-y/weights/part_0/AssignAssign/linear/linear_model/right-foot-y/weights/part_0Alinear/linear_model/right-foot-y/weights/part_0/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-y/weights/part_0*
validate_shape(*
_output_shapes

:
Ţ
4linear/linear_model/right-foot-y/weights/part_0/readIdentity/linear/linear_model/right-foot-y/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-foot-y/weights/part_0*
_output_shapes

:

(linear/linear_model/right-foot-y/weightsIdentity4linear/linear_model/right-foot-y/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/right-foot-y/weighted_sumMatMul(linear/linear_model/right-foot-y/Reshape(linear/linear_model/right-foot-y/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
w
&linear/linear_model/right-hand-c/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
~
4linear/linear_model/right-hand-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/right-hand-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-hand-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-hand-c/strided_sliceStridedSlice&linear/linear_model/right-hand-c/Shape4linear/linear_model/right-hand-c/strided_slice/stack6linear/linear_model/right-hand-c/strided_slice/stack_16linear/linear_model/right-hand-c/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
r
0linear/linear_model/right-hand-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-hand-c/Reshape/shapePack.linear/linear_model/right-hand-c/strided_slice0linear/linear_model/right-hand-c/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
ś
(linear/linear_model/right-hand-c/ReshapeReshapeParseExample/ParseExample:27.linear/linear_model/right-hand-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-hand-c/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-hand-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-hand-c/weights/part_0
VariableV2*
shared_name *B
_class8
64loc:@linear/linear_model/right-hand-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ę
6linear/linear_model/right-hand-c/weights/part_0/AssignAssign/linear/linear_model/right-hand-c/weights/part_0Alinear/linear_model/right-hand-c/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-c/weights/part_0
Ţ
4linear/linear_model/right-hand-c/weights/part_0/readIdentity/linear/linear_model/right-hand-c/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-hand-c/weights/part_0*
_output_shapes

:

(linear/linear_model/right-hand-c/weightsIdentity4linear/linear_model/right-hand-c/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/right-hand-c/weighted_sumMatMul(linear/linear_model/right-hand-c/Reshape(linear/linear_model/right-hand-c/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
w
&linear/linear_model/right-hand-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
~
4linear/linear_model/right-hand-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/right-hand-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-hand-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-hand-x/strided_sliceStridedSlice&linear/linear_model/right-hand-x/Shape4linear/linear_model/right-hand-x/strided_slice/stack6linear/linear_model/right-hand-x/strided_slice/stack_16linear/linear_model/right-hand-x/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
r
0linear/linear_model/right-hand-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-hand-x/Reshape/shapePack.linear/linear_model/right-hand-x/strided_slice0linear/linear_model/right-hand-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ś
(linear/linear_model/right-hand-x/ReshapeReshapeParseExample/ParseExample:28.linear/linear_model/right-hand-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-hand-x/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-hand-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-hand-x/weights/part_0
VariableV2*B
_class8
64loc:@linear/linear_model/right-hand-x/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
Ę
6linear/linear_model/right-hand-x/weights/part_0/AssignAssign/linear/linear_model/right-hand-x/weights/part_0Alinear/linear_model/right-hand-x/weights/part_0/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-x/weights/part_0*
validate_shape(*
_output_shapes

:
Ţ
4linear/linear_model/right-hand-x/weights/part_0/readIdentity/linear/linear_model/right-hand-x/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-hand-x/weights/part_0*
_output_shapes

:

(linear/linear_model/right-hand-x/weightsIdentity4linear/linear_model/right-hand-x/weights/part_0/read*
_output_shapes

:*
T0
Ř
-linear/linear_model/right-hand-x/weighted_sumMatMul(linear/linear_model/right-hand-x/Reshape(linear/linear_model/right-hand-x/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
w
&linear/linear_model/right-hand-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
~
4linear/linear_model/right-hand-y/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

6linear/linear_model/right-hand-y/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

6linear/linear_model/right-hand-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-hand-y/strided_sliceStridedSlice&linear/linear_model/right-hand-y/Shape4linear/linear_model/right-hand-y/strided_slice/stack6linear/linear_model/right-hand-y/strided_slice/stack_16linear/linear_model/right-hand-y/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
0linear/linear_model/right-hand-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-hand-y/Reshape/shapePack.linear/linear_model/right-hand-y/strided_slice0linear/linear_model/right-hand-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ś
(linear/linear_model/right-hand-y/ReshapeReshapeParseExample/ParseExample:29.linear/linear_model/right-hand-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-hand-y/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-hand-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-hand-y/weights/part_0
VariableV2*
shared_name *B
_class8
64loc:@linear/linear_model/right-hand-y/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ę
6linear/linear_model/right-hand-y/weights/part_0/AssignAssign/linear/linear_model/right-hand-y/weights/part_0Alinear/linear_model/right-hand-y/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-y/weights/part_0
Ţ
4linear/linear_model/right-hand-y/weights/part_0/readIdentity/linear/linear_model/right-hand-y/weights/part_0*
_output_shapes

:*
T0*B
_class8
64loc:@linear/linear_model/right-hand-y/weights/part_0

(linear/linear_model/right-hand-y/weightsIdentity4linear/linear_model/right-hand-y/weights/part_0/read*
_output_shapes

:*
T0
Ř
-linear/linear_model/right-hand-y/weighted_sumMatMul(linear/linear_model/right-hand-y/Reshape(linear/linear_model/right-hand-y/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
v
%linear/linear_model/right-hip-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
}
3linear/linear_model/right-hip-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/right-hip-c/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/right-hip-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/right-hip-c/strided_sliceStridedSlice%linear/linear_model/right-hip-c/Shape3linear/linear_model/right-hip-c/strided_slice/stack5linear/linear_model/right-hip-c/strided_slice/stack_15linear/linear_model/right-hip-c/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
q
/linear/linear_model/right-hip-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/right-hip-c/Reshape/shapePack-linear/linear_model/right-hip-c/strided_slice/linear/linear_model/right-hip-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
´
'linear/linear_model/right-hip-c/ReshapeReshapeParseExample/ParseExample:30-linear/linear_model/right-hip-c/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
Ř
@linear/linear_model/right-hip-c/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/right-hip-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/right-hip-c/weights/part_0
VariableV2*
shape
:*
dtype0*
_output_shapes

:*
shared_name *A
_class7
53loc:@linear/linear_model/right-hip-c/weights/part_0*
	container 
Ć
5linear/linear_model/right-hip-c/weights/part_0/AssignAssign.linear/linear_model/right-hip-c/weights/part_0@linear/linear_model/right-hip-c/weights/part_0/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/right-hip-c/weights/part_0*
validate_shape(*
_output_shapes

:
Ű
3linear/linear_model/right-hip-c/weights/part_0/readIdentity.linear/linear_model/right-hip-c/weights/part_0*
_output_shapes

:*
T0*A
_class7
53loc:@linear/linear_model/right-hip-c/weights/part_0

'linear/linear_model/right-hip-c/weightsIdentity3linear/linear_model/right-hip-c/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/right-hip-c/weighted_sumMatMul'linear/linear_model/right-hip-c/Reshape'linear/linear_model/right-hip-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
v
%linear/linear_model/right-hip-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/right-hip-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/right-hip-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

5linear/linear_model/right-hip-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/right-hip-x/strided_sliceStridedSlice%linear/linear_model/right-hip-x/Shape3linear/linear_model/right-hip-x/strided_slice/stack5linear/linear_model/right-hip-x/strided_slice/stack_15linear/linear_model/right-hip-x/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
q
/linear/linear_model/right-hip-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/right-hip-x/Reshape/shapePack-linear/linear_model/right-hip-x/strided_slice/linear/linear_model/right-hip-x/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 
´
'linear/linear_model/right-hip-x/ReshapeReshapeParseExample/ParseExample:31-linear/linear_model/right-hip-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/right-hip-x/weights/part_0/Initializer/zerosConst*A
_class7
53loc:@linear/linear_model/right-hip-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ĺ
.linear/linear_model/right-hip-x/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *A
_class7
53loc:@linear/linear_model/right-hip-x/weights/part_0*
	container *
shape
:
Ć
5linear/linear_model/right-hip-x/weights/part_0/AssignAssign.linear/linear_model/right-hip-x/weights/part_0@linear/linear_model/right-hip-x/weights/part_0/Initializer/zeros*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/right-hip-x/weights/part_0*
validate_shape(*
_output_shapes

:
Ű
3linear/linear_model/right-hip-x/weights/part_0/readIdentity.linear/linear_model/right-hip-x/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/right-hip-x/weights/part_0*
_output_shapes

:

'linear/linear_model/right-hip-x/weightsIdentity3linear/linear_model/right-hip-x/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/right-hip-x/weighted_sumMatMul'linear/linear_model/right-hip-x/Reshape'linear/linear_model/right-hip-x/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
v
%linear/linear_model/right-hip-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
}
3linear/linear_model/right-hip-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

5linear/linear_model/right-hip-y/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

5linear/linear_model/right-hip-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

-linear/linear_model/right-hip-y/strided_sliceStridedSlice%linear/linear_model/right-hip-y/Shape3linear/linear_model/right-hip-y/strided_slice/stack5linear/linear_model/right-hip-y/strided_slice/stack_15linear/linear_model/right-hip-y/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
q
/linear/linear_model/right-hip-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ď
-linear/linear_model/right-hip-y/Reshape/shapePack-linear/linear_model/right-hip-y/strided_slice/linear/linear_model/right-hip-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
´
'linear/linear_model/right-hip-y/ReshapeReshapeParseExample/ParseExample:32-linear/linear_model/right-hip-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ř
@linear/linear_model/right-hip-y/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*A
_class7
53loc:@linear/linear_model/right-hip-y/weights/part_0*
valueB*    
ĺ
.linear/linear_model/right-hip-y/weights/part_0
VariableV2*A
_class7
53loc:@linear/linear_model/right-hip-y/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
Ć
5linear/linear_model/right-hip-y/weights/part_0/AssignAssign.linear/linear_model/right-hip-y/weights/part_0@linear/linear_model/right-hip-y/weights/part_0/Initializer/zeros*
T0*A
_class7
53loc:@linear/linear_model/right-hip-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(
Ű
3linear/linear_model/right-hip-y/weights/part_0/readIdentity.linear/linear_model/right-hip-y/weights/part_0*
T0*A
_class7
53loc:@linear/linear_model/right-hip-y/weights/part_0*
_output_shapes

:

'linear/linear_model/right-hip-y/weightsIdentity3linear/linear_model/right-hip-y/weights/part_0/read*
T0*
_output_shapes

:
Ő
,linear/linear_model/right-hip-y/weighted_sumMatMul'linear/linear_model/right-hip-y/Reshape'linear/linear_model/right-hip-y/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
w
&linear/linear_model/right-knee-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
~
4linear/linear_model/right-knee-c/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

6linear/linear_model/right-knee-c/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

6linear/linear_model/right-knee-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-knee-c/strided_sliceStridedSlice&linear/linear_model/right-knee-c/Shape4linear/linear_model/right-knee-c/strided_slice/stack6linear/linear_model/right-knee-c/strided_slice/stack_16linear/linear_model/right-knee-c/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
r
0linear/linear_model/right-knee-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-knee-c/Reshape/shapePack.linear/linear_model/right-knee-c/strided_slice0linear/linear_model/right-knee-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ś
(linear/linear_model/right-knee-c/ReshapeReshapeParseExample/ParseExample:33.linear/linear_model/right-knee-c/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-knee-c/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*B
_class8
64loc:@linear/linear_model/right-knee-c/weights/part_0*
valueB*    
ç
/linear/linear_model/right-knee-c/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/right-knee-c/weights/part_0*
	container *
shape
:
Ę
6linear/linear_model/right-knee-c/weights/part_0/AssignAssign/linear/linear_model/right-knee-c/weights/part_0Alinear/linear_model/right-knee-c/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-c/weights/part_0
Ţ
4linear/linear_model/right-knee-c/weights/part_0/readIdentity/linear/linear_model/right-knee-c/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-knee-c/weights/part_0*
_output_shapes

:

(linear/linear_model/right-knee-c/weightsIdentity4linear/linear_model/right-knee-c/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/right-knee-c/weighted_sumMatMul(linear/linear_model/right-knee-c/Reshape(linear/linear_model/right-knee-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
w
&linear/linear_model/right-knee-x/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
~
4linear/linear_model/right-knee-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/right-knee-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-knee-x/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

.linear/linear_model/right-knee-x/strided_sliceStridedSlice&linear/linear_model/right-knee-x/Shape4linear/linear_model/right-knee-x/strided_slice/stack6linear/linear_model/right-knee-x/strided_slice/stack_16linear/linear_model/right-knee-x/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
r
0linear/linear_model/right-knee-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-knee-x/Reshape/shapePack.linear/linear_model/right-knee-x/strided_slice0linear/linear_model/right-knee-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ś
(linear/linear_model/right-knee-x/ReshapeReshapeParseExample/ParseExample:34.linear/linear_model/right-knee-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-knee-x/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-knee-x/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-knee-x/weights/part_0
VariableV2*
dtype0*
_output_shapes

:*
shared_name *B
_class8
64loc:@linear/linear_model/right-knee-x/weights/part_0*
	container *
shape
:
Ę
6linear/linear_model/right-knee-x/weights/part_0/AssignAssign/linear/linear_model/right-knee-x/weights/part_0Alinear/linear_model/right-knee-x/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-x/weights/part_0
Ţ
4linear/linear_model/right-knee-x/weights/part_0/readIdentity/linear/linear_model/right-knee-x/weights/part_0*
_output_shapes

:*
T0*B
_class8
64loc:@linear/linear_model/right-knee-x/weights/part_0

(linear/linear_model/right-knee-x/weightsIdentity4linear/linear_model/right-knee-x/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/right-knee-x/weighted_sumMatMul(linear/linear_model/right-knee-x/Reshape(linear/linear_model/right-knee-x/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
w
&linear/linear_model/right-knee-y/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       
~
4linear/linear_model/right-knee-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

6linear/linear_model/right-knee-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

6linear/linear_model/right-knee-y/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

.linear/linear_model/right-knee-y/strided_sliceStridedSlice&linear/linear_model/right-knee-y/Shape4linear/linear_model/right-knee-y/strided_slice/stack6linear/linear_model/right-knee-y/strided_slice/stack_16linear/linear_model/right-knee-y/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
r
0linear/linear_model/right-knee-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ň
.linear/linear_model/right-knee-y/Reshape/shapePack.linear/linear_model/right-knee-y/strided_slice0linear/linear_model/right-knee-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ś
(linear/linear_model/right-knee-y/ReshapeReshapeParseExample/ParseExample:35.linear/linear_model/right-knee-y/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
Ú
Alinear/linear_model/right-knee-y/weights/part_0/Initializer/zerosConst*B
_class8
64loc:@linear/linear_model/right-knee-y/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ç
/linear/linear_model/right-knee-y/weights/part_0
VariableV2*
shared_name *B
_class8
64loc:@linear/linear_model/right-knee-y/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ę
6linear/linear_model/right-knee-y/weights/part_0/AssignAssign/linear/linear_model/right-knee-y/weights/part_0Alinear/linear_model/right-knee-y/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-y/weights/part_0
Ţ
4linear/linear_model/right-knee-y/weights/part_0/readIdentity/linear/linear_model/right-knee-y/weights/part_0*
T0*B
_class8
64loc:@linear/linear_model/right-knee-y/weights/part_0*
_output_shapes

:

(linear/linear_model/right-knee-y/weightsIdentity4linear/linear_model/right-knee-y/weights/part_0/read*
T0*
_output_shapes

:
Ř
-linear/linear_model/right-knee-y/weighted_sumMatMul(linear/linear_model/right-knee-y/Reshape(linear/linear_model/right-knee-y/weights*
_output_shapes

: *
transpose_a( *
transpose_b( *
T0
{
*linear/linear_model/right-shoulder-c/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       

8linear/linear_model/right-shoulder-c/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

:linear/linear_model/right-shoulder-c/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

:linear/linear_model/right-shoulder-c/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
˛
2linear/linear_model/right-shoulder-c/strided_sliceStridedSlice*linear/linear_model/right-shoulder-c/Shape8linear/linear_model/right-shoulder-c/strided_slice/stack:linear/linear_model/right-shoulder-c/strided_slice/stack_1:linear/linear_model/right-shoulder-c/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
v
4linear/linear_model/right-shoulder-c/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ţ
2linear/linear_model/right-shoulder-c/Reshape/shapePack2linear/linear_model/right-shoulder-c/strided_slice4linear/linear_model/right-shoulder-c/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ž
,linear/linear_model/right-shoulder-c/ReshapeReshapeParseExample/ParseExample:362linear/linear_model/right-shoulder-c/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
â
Elinear/linear_model/right-shoulder-c/weights/part_0/Initializer/zerosConst*F
_class<
:8loc:@linear/linear_model/right-shoulder-c/weights/part_0*
valueB*    *
dtype0*
_output_shapes

:
ď
3linear/linear_model/right-shoulder-c/weights/part_0
VariableV2*
shared_name *F
_class<
:8loc:@linear/linear_model/right-shoulder-c/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:
Ú
:linear/linear_model/right-shoulder-c/weights/part_0/AssignAssign3linear/linear_model/right-shoulder-c/weights/part_0Elinear/linear_model/right-shoulder-c/weights/part_0/Initializer/zeros*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-c/weights/part_0*
validate_shape(*
_output_shapes

:
ę
8linear/linear_model/right-shoulder-c/weights/part_0/readIdentity3linear/linear_model/right-shoulder-c/weights/part_0*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-c/weights/part_0*
_output_shapes

:

,linear/linear_model/right-shoulder-c/weightsIdentity8linear/linear_model/right-shoulder-c/weights/part_0/read*
_output_shapes

:*
T0
ä
1linear/linear_model/right-shoulder-c/weighted_sumMatMul,linear/linear_model/right-shoulder-c/Reshape,linear/linear_model/right-shoulder-c/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
{
*linear/linear_model/right-shoulder-x/ShapeConst*
dtype0*
_output_shapes
:*
valueB"       

8linear/linear_model/right-shoulder-x/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

:linear/linear_model/right-shoulder-x/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:linear/linear_model/right-shoulder-x/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
˛
2linear/linear_model/right-shoulder-x/strided_sliceStridedSlice*linear/linear_model/right-shoulder-x/Shape8linear/linear_model/right-shoulder-x/strided_slice/stack:linear/linear_model/right-shoulder-x/strided_slice/stack_1:linear/linear_model/right-shoulder-x/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
4linear/linear_model/right-shoulder-x/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ţ
2linear/linear_model/right-shoulder-x/Reshape/shapePack2linear/linear_model/right-shoulder-x/strided_slice4linear/linear_model/right-shoulder-x/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ž
,linear/linear_model/right-shoulder-x/ReshapeReshapeParseExample/ParseExample:372linear/linear_model/right-shoulder-x/Reshape/shape*
T0*
Tshape0*
_output_shapes

: 
â
Elinear/linear_model/right-shoulder-x/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*F
_class<
:8loc:@linear/linear_model/right-shoulder-x/weights/part_0*
valueB*    
ď
3linear/linear_model/right-shoulder-x/weights/part_0
VariableV2*F
_class<
:8loc:@linear/linear_model/right-shoulder-x/weights/part_0*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name 
Ú
:linear/linear_model/right-shoulder-x/weights/part_0/AssignAssign3linear/linear_model/right-shoulder-x/weights/part_0Elinear/linear_model/right-shoulder-x/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-x/weights/part_0
ę
8linear/linear_model/right-shoulder-x/weights/part_0/readIdentity3linear/linear_model/right-shoulder-x/weights/part_0*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-x/weights/part_0*
_output_shapes

:

,linear/linear_model/right-shoulder-x/weightsIdentity8linear/linear_model/right-shoulder-x/weights/part_0/read*
T0*
_output_shapes

:
ä
1linear/linear_model/right-shoulder-x/weighted_sumMatMul,linear/linear_model/right-shoulder-x/Reshape,linear/linear_model/right-shoulder-x/weights*
T0*
_output_shapes

: *
transpose_a( *
transpose_b( 
{
*linear/linear_model/right-shoulder-y/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:

8linear/linear_model/right-shoulder-y/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

:linear/linear_model/right-shoulder-y/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

:linear/linear_model/right-shoulder-y/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
˛
2linear/linear_model/right-shoulder-y/strided_sliceStridedSlice*linear/linear_model/right-shoulder-y/Shape8linear/linear_model/right-shoulder-y/strided_slice/stack:linear/linear_model/right-shoulder-y/strided_slice/stack_1:linear/linear_model/right-shoulder-y/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
v
4linear/linear_model/right-shoulder-y/Reshape/shape/1Const*
value	B :*
dtype0*
_output_shapes
: 
Ţ
2linear/linear_model/right-shoulder-y/Reshape/shapePack2linear/linear_model/right-shoulder-y/strided_slice4linear/linear_model/right-shoulder-y/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:
ž
,linear/linear_model/right-shoulder-y/ReshapeReshapeParseExample/ParseExample:382linear/linear_model/right-shoulder-y/Reshape/shape*
_output_shapes

: *
T0*
Tshape0
â
Elinear/linear_model/right-shoulder-y/weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes

:*F
_class<
:8loc:@linear/linear_model/right-shoulder-y/weights/part_0*
valueB*    
ď
3linear/linear_model/right-shoulder-y/weights/part_0
VariableV2*
	container *
shape
:*
dtype0*
_output_shapes

:*
shared_name *F
_class<
:8loc:@linear/linear_model/right-shoulder-y/weights/part_0
Ú
:linear/linear_model/right-shoulder-y/weights/part_0/AssignAssign3linear/linear_model/right-shoulder-y/weights/part_0Elinear/linear_model/right-shoulder-y/weights/part_0/Initializer/zeros*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-y/weights/part_0
ę
8linear/linear_model/right-shoulder-y/weights/part_0/readIdentity3linear/linear_model/right-shoulder-y/weights/part_0*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-y/weights/part_0*
_output_shapes

:

,linear/linear_model/right-shoulder-y/weightsIdentity8linear/linear_model/right-shoulder-y/weights/part_0/read*
_output_shapes

:*
T0
ä
1linear/linear_model/right-shoulder-y/weighted_sumMatMul,linear/linear_model/right-shoulder-y/Reshape,linear/linear_model/right-shoulder-y/weights*
transpose_b( *
T0*
_output_shapes

: *
transpose_a( 
ý
(linear/linear_model/weighted_sum_no_biasAddN-linear/linear_model/left-elbow-c/weighted_sum-linear/linear_model/left-elbow-x/weighted_sum-linear/linear_model/left-elbow-y/weighted_sum,linear/linear_model/left-foot-c/weighted_sum,linear/linear_model/left-foot-x/weighted_sum,linear/linear_model/left-foot-y/weighted_sum,linear/linear_model/left-hand-c/weighted_sum,linear/linear_model/left-hand-x/weighted_sum,linear/linear_model/left-hand-y/weighted_sum+linear/linear_model/left-hip-c/weighted_sum+linear/linear_model/left-hip-x/weighted_sum+linear/linear_model/left-hip-y/weighted_sum,linear/linear_model/left-knee-c/weighted_sum,linear/linear_model/left-knee-x/weighted_sum,linear/linear_model/left-knee-y/weighted_sum0linear/linear_model/left-shoulder-c/weighted_sum0linear/linear_model/left-shoulder-x/weighted_sum0linear/linear_model/left-shoulder-y/weighted_sum'linear/linear_model/neck-c/weighted_sum'linear/linear_model/neck-x/weighted_sum'linear/linear_model/neck-y/weighted_sum.linear/linear_model/right-elbow-c/weighted_sum.linear/linear_model/right-elbow-x/weighted_sum.linear/linear_model/right-elbow-y/weighted_sum-linear/linear_model/right-foot-c/weighted_sum-linear/linear_model/right-foot-x/weighted_sum-linear/linear_model/right-foot-y/weighted_sum-linear/linear_model/right-hand-c/weighted_sum-linear/linear_model/right-hand-x/weighted_sum-linear/linear_model/right-hand-y/weighted_sum,linear/linear_model/right-hip-c/weighted_sum,linear/linear_model/right-hip-x/weighted_sum,linear/linear_model/right-hip-y/weighted_sum-linear/linear_model/right-knee-c/weighted_sum-linear/linear_model/right-knee-x/weighted_sum-linear/linear_model/right-knee-y/weighted_sum1linear/linear_model/right-shoulder-c/weighted_sum1linear/linear_model/right-shoulder-x/weighted_sum1linear/linear_model/right-shoulder-y/weighted_sum*
T0*
N'*
_output_shapes

: 
Â
9linear/linear_model/bias_weights/part_0/Initializer/zerosConst*
dtype0*
_output_shapes
:*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
valueB*    
Ď
'linear/linear_model/bias_weights/part_0
VariableV2*
shared_name *:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
	container *
shape:*
dtype0*
_output_shapes
:
Ś
.linear/linear_model/bias_weights/part_0/AssignAssign'linear/linear_model/bias_weights/part_09linear/linear_model/bias_weights/part_0/Initializer/zeros*
use_locking(*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
validate_shape(*
_output_shapes
:
Â
,linear/linear_model/bias_weights/part_0/readIdentity'linear/linear_model/bias_weights/part_0*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
_output_shapes
:

 linear/linear_model/bias_weightsIdentity,linear/linear_model/bias_weights/part_0/read*
T0*
_output_shapes
:
ľ
 linear/linear_model/weighted_sumBiasAdd(linear/linear_model/weighted_sum_no_bias linear/linear_model/bias_weights*
data_formatNHWC*
_output_shapes

: *
T0
u
$linear/head/predictions/logits/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
q
/linear/head/predictions/logits/assert_rank/rankConst*
value	B :*
dtype0*
_output_shapes
: 
a
Ylinear/head/predictions/logits/assert_rank/assert_type/statically_determined_correct_typeNoOp
R
Jlinear/head/predictions/logits/assert_rank/static_checks_determined_all_okNoOp
É
2linear/head/predictions/logits/strided_slice/stackConstK^linear/head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
_output_shapes
:*
valueB:
Ë
4linear/head/predictions/logits/strided_slice/stack_1ConstK^linear/head/predictions/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:
Ë
4linear/head/predictions/logits/strided_slice/stack_2ConstK^linear/head/predictions/logits/assert_rank/static_checks_determined_all_ok*
valueB:*
dtype0*
_output_shapes
:

,linear/head/predictions/logits/strided_sliceStridedSlice$linear/head/predictions/logits/Shape2linear/head/predictions/logits/strided_slice/stack4linear/head/predictions/logits/strided_slice/stack_14linear/head/predictions/logits/strided_slice/stack_2*
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
ź
-linear/head/predictions/logits/assert_equal/xConstK^linear/head/predictions/logits/assert_rank/static_checks_determined_all_ok*
value	B :*
dtype0*
_output_shapes
: 
¸
1linear/head/predictions/logits/assert_equal/EqualEqual-linear/head/predictions/logits/assert_equal/x,linear/head/predictions/logits/strided_slice*
T0*
_output_shapes
: 
Á
1linear/head/predictions/logits/assert_equal/ConstConstK^linear/head/predictions/logits/assert_rank/static_checks_determined_all_ok*
dtype0*
_output_shapes
: *
valueB 
Ń
/linear/head/predictions/logits/assert_equal/AllAll1linear/head/predictions/logits/assert_equal/Equal1linear/head/predictions/logits/assert_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
ˇ
9linear/head/predictions/logits/assert_equal/Assert/AssertAssert/linear/head/predictions/logits/assert_equal/All$linear/head/predictions/logits/Shape*

T
2*
	summarize
ü
linear/head/predictions/logitsIdentity linear/linear_model/weighted_sumK^linear/head/predictions/logits/assert_rank/static_checks_determined_all_ok:^linear/head/predictions/logits/assert_equal/Assert/Assert*
T0*
_output_shapes

: 
r
 linear/head/predictions/logisticSigmoidlinear/head/predictions/logits*
T0*
_output_shapes

: 
m
"linear/head/predictions/zeros_likeConst*
dtype0*
_output_shapes

: *
valueB
 
o
-linear/head/predictions/two_class_logits/axisConst*
dtype0*
_output_shapes
: *
value	B :
ă
(linear/head/predictions/two_class_logitsConcatV2"linear/head/predictions/zeros_likelinear/head/predictions/logits-linear/head/predictions/two_class_logits/axis*
N*
_output_shapes

: *

Tidx0*
T0

%linear/head/predictions/probabilitiesSoftmax(linear/head/predictions/two_class_logits*
T0*
_output_shapes

: 
j
(linear/head/predictions/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
ž
linear/head/predictions/ArgMaxArgMax(linear/head/predictions/two_class_logits(linear/head/predictions/ArgMax/dimension*
T0*
output_type0	*
_output_shapes
: *

Tidx0
v
%linear/head/predictions/classes/shapeConst*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:
Ś
linear/head/predictions/classesReshapelinear/head/predictions/ArgMax%linear/head/predictions/classes/shape*
T0	*
Tshape0*
_output_shapes

: 
Ő
#linear/head/predictions/str_classesAsStringlinear/head/predictions/classes*
width˙˙˙˙˙˙˙˙˙*
_output_shapes

: *
shortest( *
	precision˙˙˙˙˙˙˙˙˙*
T0	*

fill *

scientific( 
b
linear/head/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
i
linear/head/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
k
!linear/head/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
k
!linear/head/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ľ
linear/head/strided_sliceStridedSlicelinear/head/Shapelinear/head/strided_slice/stack!linear/head/strided_slice/stack_1!linear/head/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
k
linear/head/AsString/inputConst*
valueB"       *
dtype0*
_output_shapes
:
ż
linear/head/AsStringAsStringlinear/head/AsString/input*
T0*

fill *

scientific( *
width˙˙˙˙˙˙˙˙˙*
_output_shapes
:*
	precision˙˙˙˙˙˙˙˙˙*
shortest( 
\
linear/head/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 

linear/head/ExpandDims
ExpandDimslinear/head/AsStringlinear/head/ExpandDims/dim*
_output_shapes

:*

Tdim0*
T0
^
linear/head/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 

linear/head/Tile/multiplesPacklinear/head/strided_slicelinear/head/Tile/multiples/1*
N*
_output_shapes
:*
T0*

axis 

linear/head/TileTilelinear/head/ExpandDimslinear/head/Tile/multiples*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tmultiples0
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_442992ad71744bf3b86f0ac703a1167e/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
ë
save/SaveV2/tensor_namesConst*
valueB)Bglobal_stepB linear/linear_model/bias_weightsB(linear/linear_model/left-elbow-c/weightsB(linear/linear_model/left-elbow-x/weightsB(linear/linear_model/left-elbow-y/weightsB'linear/linear_model/left-foot-c/weightsB'linear/linear_model/left-foot-x/weightsB'linear/linear_model/left-foot-y/weightsB'linear/linear_model/left-hand-c/weightsB'linear/linear_model/left-hand-x/weightsB'linear/linear_model/left-hand-y/weightsB&linear/linear_model/left-hip-c/weightsB&linear/linear_model/left-hip-x/weightsB&linear/linear_model/left-hip-y/weightsB'linear/linear_model/left-knee-c/weightsB'linear/linear_model/left-knee-x/weightsB'linear/linear_model/left-knee-y/weightsB+linear/linear_model/left-shoulder-c/weightsB+linear/linear_model/left-shoulder-x/weightsB+linear/linear_model/left-shoulder-y/weightsB"linear/linear_model/neck-c/weightsB"linear/linear_model/neck-x/weightsB"linear/linear_model/neck-y/weightsB)linear/linear_model/right-elbow-c/weightsB)linear/linear_model/right-elbow-x/weightsB)linear/linear_model/right-elbow-y/weightsB(linear/linear_model/right-foot-c/weightsB(linear/linear_model/right-foot-x/weightsB(linear/linear_model/right-foot-y/weightsB(linear/linear_model/right-hand-c/weightsB(linear/linear_model/right-hand-x/weightsB(linear/linear_model/right-hand-y/weightsB'linear/linear_model/right-hip-c/weightsB'linear/linear_model/right-hip-x/weightsB'linear/linear_model/right-hip-y/weightsB(linear/linear_model/right-knee-c/weightsB(linear/linear_model/right-knee-x/weightsB(linear/linear_model/right-knee-y/weightsB,linear/linear_model/right-shoulder-c/weightsB,linear/linear_model/right-shoulder-x/weightsB,linear/linear_model/right-shoulder-y/weights*
dtype0*
_output_shapes
:)
ę
save/SaveV2/shape_and_slicesConst*
valueB)B B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:)

save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_step,linear/linear_model/bias_weights/part_0/read4linear/linear_model/left-elbow-c/weights/part_0/read4linear/linear_model/left-elbow-x/weights/part_0/read4linear/linear_model/left-elbow-y/weights/part_0/read3linear/linear_model/left-foot-c/weights/part_0/read3linear/linear_model/left-foot-x/weights/part_0/read3linear/linear_model/left-foot-y/weights/part_0/read3linear/linear_model/left-hand-c/weights/part_0/read3linear/linear_model/left-hand-x/weights/part_0/read3linear/linear_model/left-hand-y/weights/part_0/read2linear/linear_model/left-hip-c/weights/part_0/read2linear/linear_model/left-hip-x/weights/part_0/read2linear/linear_model/left-hip-y/weights/part_0/read3linear/linear_model/left-knee-c/weights/part_0/read3linear/linear_model/left-knee-x/weights/part_0/read3linear/linear_model/left-knee-y/weights/part_0/read7linear/linear_model/left-shoulder-c/weights/part_0/read7linear/linear_model/left-shoulder-x/weights/part_0/read7linear/linear_model/left-shoulder-y/weights/part_0/read.linear/linear_model/neck-c/weights/part_0/read.linear/linear_model/neck-x/weights/part_0/read.linear/linear_model/neck-y/weights/part_0/read5linear/linear_model/right-elbow-c/weights/part_0/read5linear/linear_model/right-elbow-x/weights/part_0/read5linear/linear_model/right-elbow-y/weights/part_0/read4linear/linear_model/right-foot-c/weights/part_0/read4linear/linear_model/right-foot-x/weights/part_0/read4linear/linear_model/right-foot-y/weights/part_0/read4linear/linear_model/right-hand-c/weights/part_0/read4linear/linear_model/right-hand-x/weights/part_0/read4linear/linear_model/right-hand-y/weights/part_0/read3linear/linear_model/right-hip-c/weights/part_0/read3linear/linear_model/right-hip-x/weights/part_0/read3linear/linear_model/right-hip-y/weights/part_0/read4linear/linear_model/right-knee-c/weights/part_0/read4linear/linear_model/right-knee-x/weights/part_0/read4linear/linear_model/right-knee-y/weights/part_0/read8linear/linear_model/right-shoulder-c/weights/part_0/read8linear/linear_model/right-shoulder-x/weights/part_0/read8linear/linear_model/right-shoulder-y/weights/part_0/read*7
dtypes-
+2)	

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*
_output_shapes
:*
T0*

axis 
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
o
save/RestoreV2/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2	

save/AssignAssignglobal_stepsave/RestoreV2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save/RestoreV2_1/tensor_namesConst*5
value,B*B linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
o
!save/RestoreV2_1/shape_and_slicesConst*
valueBB1 0,1*
dtype0*
_output_shapes
:

save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
Ü
save/Assign_1Assign'linear/linear_model/bias_weights/part_0save/RestoreV2_1*
use_locking(*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
validate_shape(*
_output_shapes
:

save/RestoreV2_2/tensor_namesConst*=
value4B2B(linear/linear_model/left-elbow-c/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_2/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_2Assign/linear/linear_model/left-elbow-c/weights/part_0save/RestoreV2_2*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_3/tensor_namesConst*=
value4B2B(linear/linear_model/left-elbow-x/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_3/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_3Assign/linear/linear_model/left-elbow-x/weights/part_0save/RestoreV2_3*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-x/weights/part_0

save/RestoreV2_4/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(linear/linear_model/left-elbow-y/weights
u
!save/RestoreV2_4/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_4Assign/linear/linear_model/left-elbow-y/weights/part_0save/RestoreV2_4*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-y/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_5/tensor_namesConst*<
value3B1B'linear/linear_model/left-foot-c/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:
î
save/Assign_5Assign.linear/linear_model/left-foot-c/weights/part_0save/RestoreV2_5*
T0*A
_class7
53loc:@linear/linear_model/left-foot-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_6/tensor_namesConst*<
value3B1B'linear/linear_model/left-foot-x/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_6/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes

:
î
save/Assign_6Assign.linear/linear_model/left-foot-x/weights/part_0save/RestoreV2_6*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-x/weights/part_0

save/RestoreV2_7/tensor_namesConst*<
value3B1B'linear/linear_model/left-foot-y/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_7/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
_output_shapes

:*
dtypes
2
î
save/Assign_7Assign.linear/linear_model/left-foot-y/weights/part_0save/RestoreV2_7*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-y/weights/part_0

save/RestoreV2_8/tensor_namesConst*<
value3B1B'linear/linear_model/left-hand-c/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
_output_shapes

:*
dtypes
2
î
save/Assign_8Assign.linear/linear_model/left-hand-c/weights/part_0save/RestoreV2_8*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-c/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_9/tensor_namesConst*<
value3B1B'linear/linear_model/left-hand-x/weights*
dtype0*
_output_shapes
:
u
!save/RestoreV2_9/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
_output_shapes

:*
dtypes
2
î
save/Assign_9Assign.linear/linear_model/left-hand-x/weights/part_0save/RestoreV2_9*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-x/weights/part_0

save/RestoreV2_10/tensor_namesConst*<
value3B1B'linear/linear_model/left-hand-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_10/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_10Assign.linear/linear_model/left-hand-y/weights/part_0save/RestoreV2_10*
T0*A
_class7
53loc:@linear/linear_model/left-hand-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_11/tensor_namesConst*;
value2B0B&linear/linear_model/left-hip-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_11/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes

:
î
save/Assign_11Assign-linear/linear_model/left-hip-c/weights/part_0save/RestoreV2_11*
T0*@
_class6
42loc:@linear/linear_model/left-hip-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_12/tensor_namesConst*;
value2B0B&linear/linear_model/left-hip-x/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_12/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes

:
î
save/Assign_12Assign-linear/linear_model/left-hip-x/weights/part_0save/RestoreV2_12*
T0*@
_class6
42loc:@linear/linear_model/left-hip-x/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_13/tensor_namesConst*;
value2B0B&linear/linear_model/left-hip-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_13/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
_output_shapes

:*
dtypes
2
î
save/Assign_13Assign-linear/linear_model/left-hip-y/weights/part_0save/RestoreV2_13*
T0*@
_class6
42loc:@linear/linear_model/left-hip-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_14/tensor_namesConst*<
value3B1B'linear/linear_model/left-knee-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_14/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_14Assign.linear/linear_model/left-knee-c/weights/part_0save/RestoreV2_14*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-c/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_15/tensor_namesConst*
dtype0*
_output_shapes
:*<
value3B1B'linear/linear_model/left-knee-x/weights
v
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_15Assign.linear/linear_model/left-knee-x/weights/part_0save/RestoreV2_15*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_16/tensor_namesConst*
dtype0*
_output_shapes
:*<
value3B1B'linear/linear_model/left-knee-y/weights
v
"save/RestoreV2_16/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_16Assign.linear/linear_model/left-knee-y/weights/part_0save/RestoreV2_16*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-y/weights/part_0

save/RestoreV2_17/tensor_namesConst*
dtype0*
_output_shapes
:*@
value7B5B+linear/linear_model/left-shoulder-c/weights
v
"save/RestoreV2_17/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
_output_shapes

:*
dtypes
2
ř
save/Assign_17Assign2linear/linear_model/left-shoulder-c/weights/part_0save/RestoreV2_17*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_18/tensor_namesConst*@
value7B5B+linear/linear_model/left-shoulder-x/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_18/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
_output_shapes

:*
dtypes
2
ř
save/Assign_18Assign2linear/linear_model/left-shoulder-x/weights/part_0save/RestoreV2_18*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-x/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_19/tensor_namesConst*@
value7B5B+linear/linear_model/left-shoulder-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_19/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
_output_shapes

:*
dtypes
2
ř
save/Assign_19Assign2linear/linear_model/left-shoulder-y/weights/part_0save/RestoreV2_19*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-y/weights/part_0

save/RestoreV2_20/tensor_namesConst*7
value.B,B"linear/linear_model/neck-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_20/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes

:
ć
save/Assign_20Assign)linear/linear_model/neck-c/weights/part_0save/RestoreV2_20*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-c/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_21/tensor_namesConst*
dtype0*
_output_shapes
:*7
value.B,B"linear/linear_model/neck-x/weights
v
"save/RestoreV2_21/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
_output_shapes

:*
dtypes
2
ć
save/Assign_21Assign)linear/linear_model/neck-x/weights/part_0save/RestoreV2_21*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_22/tensor_namesConst*7
value.B,B"linear/linear_model/neck-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_22/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
_output_shapes

:*
dtypes
2
ć
save/Assign_22Assign)linear/linear_model/neck-y/weights/part_0save/RestoreV2_22*
T0*<
_class2
0.loc:@linear/linear_model/neck-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_23/tensor_namesConst*
dtype0*
_output_shapes
:*>
value5B3B)linear/linear_model/right-elbow-c/weights
v
"save/RestoreV2_23/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save/Assign_23Assign0linear/linear_model/right-elbow-c/weights/part_0save/RestoreV2_23*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-c/weights/part_0

save/RestoreV2_24/tensor_namesConst*>
value5B3B)linear/linear_model/right-elbow-x/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_24/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_24	RestoreV2
save/Constsave/RestoreV2_24/tensor_names"save/RestoreV2_24/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save/Assign_24Assign0linear/linear_model/right-elbow-x/weights/part_0save/RestoreV2_24*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-x/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_25/tensor_namesConst*>
value5B3B)linear/linear_model/right-elbow-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_25/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_25	RestoreV2
save/Constsave/RestoreV2_25/tensor_names"save/RestoreV2_25/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save/Assign_25Assign0linear/linear_model/right-elbow-y/weights/part_0save/RestoreV2_25*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-y/weights/part_0

save/RestoreV2_26/tensor_namesConst*=
value4B2B(linear/linear_model/right-foot-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_26/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_26	RestoreV2
save/Constsave/RestoreV2_26/tensor_names"save/RestoreV2_26/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_26Assign/linear/linear_model/right-foot-c/weights/part_0save/RestoreV2_26*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-c/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_27/tensor_namesConst*=
value4B2B(linear/linear_model/right-foot-x/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_27/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_27	RestoreV2
save/Constsave/RestoreV2_27/tensor_names"save/RestoreV2_27/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_27Assign/linear/linear_model/right-foot-x/weights/part_0save/RestoreV2_27*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_28/tensor_namesConst*=
value4B2B(linear/linear_model/right-foot-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_28/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_28	RestoreV2
save/Constsave/RestoreV2_28/tensor_names"save/RestoreV2_28/shape_and_slices*
dtypes
2*
_output_shapes

:
ň
save/Assign_28Assign/linear/linear_model/right-foot-y/weights/part_0save/RestoreV2_28*
T0*B
_class8
64loc:@linear/linear_model/right-foot-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_29/tensor_namesConst*=
value4B2B(linear/linear_model/right-hand-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_29/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_29	RestoreV2
save/Constsave/RestoreV2_29/tensor_names"save/RestoreV2_29/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_29Assign/linear/linear_model/right-hand-c/weights/part_0save/RestoreV2_29*
T0*B
_class8
64loc:@linear/linear_model/right-hand-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_30/tensor_namesConst*=
value4B2B(linear/linear_model/right-hand-x/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_30/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_30	RestoreV2
save/Constsave/RestoreV2_30/tensor_names"save/RestoreV2_30/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_30Assign/linear/linear_model/right-hand-x/weights/part_0save/RestoreV2_30*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_31/tensor_namesConst*=
value4B2B(linear/linear_model/right-hand-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_31/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_31	RestoreV2
save/Constsave/RestoreV2_31/tensor_names"save/RestoreV2_31/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_31Assign/linear/linear_model/right-hand-y/weights/part_0save/RestoreV2_31*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-y/weights/part_0

save/RestoreV2_32/tensor_namesConst*<
value3B1B'linear/linear_model/right-hip-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_32/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_32	RestoreV2
save/Constsave/RestoreV2_32/tensor_names"save/RestoreV2_32/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_32Assign.linear/linear_model/right-hip-c/weights/part_0save/RestoreV2_32*
T0*A
_class7
53loc:@linear/linear_model/right-hip-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_33/tensor_namesConst*<
value3B1B'linear/linear_model/right-hip-x/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_33/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_33	RestoreV2
save/Constsave/RestoreV2_33/tensor_names"save/RestoreV2_33/shape_and_slices*
_output_shapes

:*
dtypes
2
đ
save/Assign_33Assign.linear/linear_model/right-hip-x/weights/part_0save/RestoreV2_33*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/right-hip-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_34/tensor_namesConst*
dtype0*
_output_shapes
:*<
value3B1B'linear/linear_model/right-hip-y/weights
v
"save/RestoreV2_34/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_34	RestoreV2
save/Constsave/RestoreV2_34/tensor_names"save/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes

:
đ
save/Assign_34Assign.linear/linear_model/right-hip-y/weights/part_0save/RestoreV2_34*
T0*A
_class7
53loc:@linear/linear_model/right-hip-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save/RestoreV2_35/tensor_namesConst*=
value4B2B(linear/linear_model/right-knee-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_35/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_35	RestoreV2
save/Constsave/RestoreV2_35/tensor_names"save/RestoreV2_35/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_35Assign/linear/linear_model/right-knee-c/weights/part_0save/RestoreV2_35*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-c/weights/part_0

save/RestoreV2_36/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(linear/linear_model/right-knee-x/weights
v
"save/RestoreV2_36/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_36	RestoreV2
save/Constsave/RestoreV2_36/tensor_names"save/RestoreV2_36/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_36Assign/linear/linear_model/right-knee-x/weights/part_0save/RestoreV2_36*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_37/tensor_namesConst*=
value4B2B(linear/linear_model/right-knee-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_37/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_37	RestoreV2
save/Constsave/RestoreV2_37/tensor_names"save/RestoreV2_37/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save/Assign_37Assign/linear/linear_model/right-knee-y/weights/part_0save/RestoreV2_37*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-y/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_38/tensor_namesConst*A
value8B6B,linear/linear_model/right-shoulder-c/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_38/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_38	RestoreV2
save/Constsave/RestoreV2_38/tensor_names"save/RestoreV2_38/shape_and_slices*
_output_shapes

:*
dtypes
2
ú
save/Assign_38Assign3linear/linear_model/right-shoulder-c/weights/part_0save/RestoreV2_38*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-c/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_39/tensor_namesConst*
dtype0*
_output_shapes
:*A
value8B6B,linear/linear_model/right-shoulder-x/weights
v
"save/RestoreV2_39/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1

save/RestoreV2_39	RestoreV2
save/Constsave/RestoreV2_39/tensor_names"save/RestoreV2_39/shape_and_slices*
_output_shapes

:*
dtypes
2
ú
save/Assign_39Assign3linear/linear_model/right-shoulder-x/weights/part_0save/RestoreV2_39*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-x/weights/part_0*
validate_shape(*
_output_shapes

:

save/RestoreV2_40/tensor_namesConst*A
value8B6B,linear/linear_model/right-shoulder-y/weights*
dtype0*
_output_shapes
:
v
"save/RestoreV2_40/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:

save/RestoreV2_40	RestoreV2
save/Constsave/RestoreV2_40/tensor_names"save/RestoreV2_40/shape_and_slices*
_output_shapes

:*
dtypes
2
ú
save/Assign_40Assign3linear/linear_model/right-shoulder-y/weights/part_0save/RestoreV2_40*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-y/weights/part_0*
validate_shape(*
_output_shapes

:
Ç
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40
-
save/restore_allNoOp^save/restore_shard

initNoOp

init_all_tablesNoOp
+

group_depsNoOp^init^init_all_tables
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_94ced6a7deef4f1ba07391f7cc84e23e/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
_output_shapes
: *
value	B : 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
í
save_1/SaveV2/tensor_namesConst*
valueB)Bglobal_stepB linear/linear_model/bias_weightsB(linear/linear_model/left-elbow-c/weightsB(linear/linear_model/left-elbow-x/weightsB(linear/linear_model/left-elbow-y/weightsB'linear/linear_model/left-foot-c/weightsB'linear/linear_model/left-foot-x/weightsB'linear/linear_model/left-foot-y/weightsB'linear/linear_model/left-hand-c/weightsB'linear/linear_model/left-hand-x/weightsB'linear/linear_model/left-hand-y/weightsB&linear/linear_model/left-hip-c/weightsB&linear/linear_model/left-hip-x/weightsB&linear/linear_model/left-hip-y/weightsB'linear/linear_model/left-knee-c/weightsB'linear/linear_model/left-knee-x/weightsB'linear/linear_model/left-knee-y/weightsB+linear/linear_model/left-shoulder-c/weightsB+linear/linear_model/left-shoulder-x/weightsB+linear/linear_model/left-shoulder-y/weightsB"linear/linear_model/neck-c/weightsB"linear/linear_model/neck-x/weightsB"linear/linear_model/neck-y/weightsB)linear/linear_model/right-elbow-c/weightsB)linear/linear_model/right-elbow-x/weightsB)linear/linear_model/right-elbow-y/weightsB(linear/linear_model/right-foot-c/weightsB(linear/linear_model/right-foot-x/weightsB(linear/linear_model/right-foot-y/weightsB(linear/linear_model/right-hand-c/weightsB(linear/linear_model/right-hand-x/weightsB(linear/linear_model/right-hand-y/weightsB'linear/linear_model/right-hip-c/weightsB'linear/linear_model/right-hip-x/weightsB'linear/linear_model/right-hip-y/weightsB(linear/linear_model/right-knee-c/weightsB(linear/linear_model/right-knee-x/weightsB(linear/linear_model/right-knee-y/weightsB,linear/linear_model/right-shoulder-c/weightsB,linear/linear_model/right-shoulder-x/weightsB,linear/linear_model/right-shoulder-y/weights*
dtype0*
_output_shapes
:)
ě
save_1/SaveV2/shape_and_slicesConst*
valueB)B B1 0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1B1 1 0,1:0,1*
dtype0*
_output_shapes
:)

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesglobal_step,linear/linear_model/bias_weights/part_0/read4linear/linear_model/left-elbow-c/weights/part_0/read4linear/linear_model/left-elbow-x/weights/part_0/read4linear/linear_model/left-elbow-y/weights/part_0/read3linear/linear_model/left-foot-c/weights/part_0/read3linear/linear_model/left-foot-x/weights/part_0/read3linear/linear_model/left-foot-y/weights/part_0/read3linear/linear_model/left-hand-c/weights/part_0/read3linear/linear_model/left-hand-x/weights/part_0/read3linear/linear_model/left-hand-y/weights/part_0/read2linear/linear_model/left-hip-c/weights/part_0/read2linear/linear_model/left-hip-x/weights/part_0/read2linear/linear_model/left-hip-y/weights/part_0/read3linear/linear_model/left-knee-c/weights/part_0/read3linear/linear_model/left-knee-x/weights/part_0/read3linear/linear_model/left-knee-y/weights/part_0/read7linear/linear_model/left-shoulder-c/weights/part_0/read7linear/linear_model/left-shoulder-x/weights/part_0/read7linear/linear_model/left-shoulder-y/weights/part_0/read.linear/linear_model/neck-c/weights/part_0/read.linear/linear_model/neck-x/weights/part_0/read.linear/linear_model/neck-y/weights/part_0/read5linear/linear_model/right-elbow-c/weights/part_0/read5linear/linear_model/right-elbow-x/weights/part_0/read5linear/linear_model/right-elbow-y/weights/part_0/read4linear/linear_model/right-foot-c/weights/part_0/read4linear/linear_model/right-foot-x/weights/part_0/read4linear/linear_model/right-foot-y/weights/part_0/read4linear/linear_model/right-hand-c/weights/part_0/read4linear/linear_model/right-hand-x/weights/part_0/read4linear/linear_model/right-hand-y/weights/part_0/read3linear/linear_model/right-hip-c/weights/part_0/read3linear/linear_model/right-hip-x/weights/part_0/read3linear/linear_model/right-hip-y/weights/part_0/read4linear/linear_model/right-knee-c/weights/part_0/read4linear/linear_model/right-knee-x/weights/part_0/read4linear/linear_model/right-knee-y/weights/part_0/read8linear/linear_model/right-shoulder-c/weights/part_0/read8linear/linear_model/right-shoulder-x/weights/part_0/read8linear/linear_model/right-shoulder-y/weights/part_0/read*7
dtypes-
+2)	

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
Ł
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save_1/RestoreV2/tensor_namesConst* 
valueBBglobal_step*
dtype0*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0*
_output_shapes
:

save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
:*
dtypes
2	
 
save_1/AssignAssignglobal_stepsave_1/RestoreV2*
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(*
_output_shapes
: 

save_1/RestoreV2_1/tensor_namesConst*5
value,B*B linear/linear_model/bias_weights*
dtype0*
_output_shapes
:
q
#save_1/RestoreV2_1/shape_and_slicesConst*
valueBB1 0,1*
dtype0*
_output_shapes
:
 
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
_output_shapes
:*
dtypes
2
ŕ
save_1/Assign_1Assign'linear/linear_model/bias_weights/part_0save_1/RestoreV2_1*
use_locking(*
T0*:
_class0
.,loc:@linear/linear_model/bias_weights/part_0*
validate_shape(*
_output_shapes
:

save_1/RestoreV2_2/tensor_namesConst*=
value4B2B(linear/linear_model/left-elbow-c/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_2/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
¤
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes

:
ô
save_1/Assign_2Assign/linear/linear_model/left-elbow-c/weights/part_0save_1/RestoreV2_2*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-c/weights/part_0*
validate_shape(*
_output_shapes

:

save_1/RestoreV2_3/tensor_namesConst*=
value4B2B(linear/linear_model/left-elbow-x/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_3/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
¤
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_3Assign/linear/linear_model/left-elbow-x/weights/part_0save_1/RestoreV2_3*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-x/weights/part_0

save_1/RestoreV2_4/tensor_namesConst*=
value4B2B(linear/linear_model/left-elbow-y/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
¤
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_4Assign/linear/linear_model/left-elbow-y/weights/part_0save_1/RestoreV2_4*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/left-elbow-y/weights/part_0

save_1/RestoreV2_5/tensor_namesConst*<
value3B1B'linear/linear_model/left-foot-c/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_5/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
¤
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save_1/Assign_5Assign.linear/linear_model/left-foot-c/weights/part_0save_1/RestoreV2_5*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-c/weights/part_0

save_1/RestoreV2_6/tensor_namesConst*
dtype0*
_output_shapes
:*<
value3B1B'linear/linear_model/left-foot-x/weights
w
#save_1/RestoreV2_6/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
¤
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes

:
ň
save_1/Assign_6Assign.linear/linear_model/left-foot-x/weights/part_0save_1/RestoreV2_6*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-x/weights/part_0*
validate_shape(*
_output_shapes

:

save_1/RestoreV2_7/tensor_namesConst*<
value3B1B'linear/linear_model/left-foot-y/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_7/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
¤
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save_1/Assign_7Assign.linear/linear_model/left-foot-y/weights/part_0save_1/RestoreV2_7*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-foot-y/weights/part_0

save_1/RestoreV2_8/tensor_namesConst*<
value3B1B'linear/linear_model/left-hand-c/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
¤
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes

:
ň
save_1/Assign_8Assign.linear/linear_model/left-hand-c/weights/part_0save_1/RestoreV2_8*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-c/weights/part_0

save_1/RestoreV2_9/tensor_namesConst*<
value3B1B'linear/linear_model/left-hand-x/weights*
dtype0*
_output_shapes
:
w
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
¤
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save_1/Assign_9Assign.linear/linear_model/left-hand-x/weights/part_0save_1/RestoreV2_9*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-x/weights/part_0

 save_1/RestoreV2_10/tensor_namesConst*<
value3B1B'linear/linear_model/left-hand-y/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_10Assign.linear/linear_model/left-hand-y/weights/part_0save_1/RestoreV2_10*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-hand-y/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_11/tensor_namesConst*;
value2B0B&linear/linear_model/left-hip-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_11/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save_1/Assign_11Assign-linear/linear_model/left-hip-c/weights/part_0save_1/RestoreV2_11*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/left-hip-c/weights/part_0

 save_1/RestoreV2_12/tensor_namesConst*;
value2B0B&linear/linear_model/left-hip-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save_1/Assign_12Assign-linear/linear_model/left-hip-x/weights/part_0save_1/RestoreV2_12*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/left-hip-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_13/tensor_namesConst*
dtype0*
_output_shapes
:*;
value2B0B&linear/linear_model/left-hip-y/weights
x
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
_output_shapes

:*
dtypes
2
ň
save_1/Assign_13Assign-linear/linear_model/left-hip-y/weights/part_0save_1/RestoreV2_13*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*@
_class6
42loc:@linear/linear_model/left-hip-y/weights/part_0

 save_1/RestoreV2_14/tensor_namesConst*<
value3B1B'linear/linear_model/left-knee-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_14/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_14Assign.linear/linear_model/left-knee-c/weights/part_0save_1/RestoreV2_14*
T0*A
_class7
53loc:@linear/linear_model/left-knee-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_15/tensor_namesConst*<
value3B1B'linear/linear_model/left-knee-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_15/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_15Assign.linear/linear_model/left-knee-x/weights/part_0save_1/RestoreV2_15*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_16/tensor_namesConst*<
value3B1B'linear/linear_model/left-knee-y/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_16/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_16Assign.linear/linear_model/left-knee-y/weights/part_0save_1/RestoreV2_16*
use_locking(*
T0*A
_class7
53loc:@linear/linear_model/left-knee-y/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_17/tensor_namesConst*@
value7B5B+linear/linear_model/left-shoulder-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_17/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes

:
ü
save_1/Assign_17Assign2linear/linear_model/left-shoulder-c/weights/part_0save_1/RestoreV2_17*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-c/weights/part_0

 save_1/RestoreV2_18/tensor_namesConst*@
value7B5B+linear/linear_model/left-shoulder-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_18/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
_output_shapes

:*
dtypes
2
ü
save_1/Assign_18Assign2linear/linear_model/left-shoulder-x/weights/part_0save_1/RestoreV2_18*
use_locking(*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_19/tensor_namesConst*
dtype0*
_output_shapes
:*@
value7B5B+linear/linear_model/left-shoulder-y/weights
x
$save_1/RestoreV2_19/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
_output_shapes

:*
dtypes
2
ü
save_1/Assign_19Assign2linear/linear_model/left-shoulder-y/weights/part_0save_1/RestoreV2_19*
T0*E
_class;
97loc:@linear/linear_model/left-shoulder-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_20/tensor_namesConst*7
value.B,B"linear/linear_model/neck-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
_output_shapes

:*
dtypes
2
ę
save_1/Assign_20Assign)linear/linear_model/neck-c/weights/part_0save_1/RestoreV2_20*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-c/weights/part_0

 save_1/RestoreV2_21/tensor_namesConst*7
value.B,B"linear/linear_model/neck-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_21/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
_output_shapes

:*
dtypes
2
ę
save_1/Assign_21Assign)linear/linear_model/neck-x/weights/part_0save_1/RestoreV2_21*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_22/tensor_namesConst*
dtype0*
_output_shapes
:*7
value.B,B"linear/linear_model/neck-y/weights
x
$save_1/RestoreV2_22/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
_output_shapes

:*
dtypes
2
ę
save_1/Assign_22Assign)linear/linear_model/neck-y/weights/part_0save_1/RestoreV2_22*
use_locking(*
T0*<
_class2
0.loc:@linear/linear_model/neck-y/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_23/tensor_namesConst*>
value5B3B)linear/linear_model/right-elbow-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_23/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes

:
ř
save_1/Assign_23Assign0linear/linear_model/right-elbow-c/weights/part_0save_1/RestoreV2_23*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-c/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_24/tensor_namesConst*>
value5B3B)linear/linear_model/right-elbow-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_24/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_24	RestoreV2save_1/Const save_1/RestoreV2_24/tensor_names$save_1/RestoreV2_24/shape_and_slices*
_output_shapes

:*
dtypes
2
ř
save_1/Assign_24Assign0linear/linear_model/right-elbow-x/weights/part_0save_1/RestoreV2_24*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_25/tensor_namesConst*
dtype0*
_output_shapes
:*>
value5B3B)linear/linear_model/right-elbow-y/weights
x
$save_1/RestoreV2_25/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_25	RestoreV2save_1/Const save_1/RestoreV2_25/tensor_names$save_1/RestoreV2_25/shape_and_slices*
_output_shapes

:*
dtypes
2
ř
save_1/Assign_25Assign0linear/linear_model/right-elbow-y/weights/part_0save_1/RestoreV2_25*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*C
_class9
75loc:@linear/linear_model/right-elbow-y/weights/part_0

 save_1/RestoreV2_26/tensor_namesConst*=
value4B2B(linear/linear_model/right-foot-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_26/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_26	RestoreV2save_1/Const save_1/RestoreV2_26/tensor_names$save_1/RestoreV2_26/shape_and_slices*
dtypes
2*
_output_shapes

:
ö
save_1/Assign_26Assign/linear/linear_model/right-foot-c/weights/part_0save_1/RestoreV2_26*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-c/weights/part_0

 save_1/RestoreV2_27/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(linear/linear_model/right-foot-x/weights
x
$save_1/RestoreV2_27/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_27	RestoreV2save_1/Const save_1/RestoreV2_27/tensor_names$save_1/RestoreV2_27/shape_and_slices*
dtypes
2*
_output_shapes

:
ö
save_1/Assign_27Assign/linear/linear_model/right-foot-x/weights/part_0save_1/RestoreV2_27*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_28/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(linear/linear_model/right-foot-y/weights
x
$save_1/RestoreV2_28/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_28	RestoreV2save_1/Const save_1/RestoreV2_28/tensor_names$save_1/RestoreV2_28/shape_and_slices*
_output_shapes

:*
dtypes
2
ö
save_1/Assign_28Assign/linear/linear_model/right-foot-y/weights/part_0save_1/RestoreV2_28*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-foot-y/weights/part_0

 save_1/RestoreV2_29/tensor_namesConst*=
value4B2B(linear/linear_model/right-hand-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_29/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_29	RestoreV2save_1/Const save_1/RestoreV2_29/tensor_names$save_1/RestoreV2_29/shape_and_slices*
dtypes
2*
_output_shapes

:
ö
save_1/Assign_29Assign/linear/linear_model/right-hand-c/weights/part_0save_1/RestoreV2_29*
T0*B
_class8
64loc:@linear/linear_model/right-hand-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_30/tensor_namesConst*=
value4B2B(linear/linear_model/right-hand-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_30/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_30	RestoreV2save_1/Const save_1/RestoreV2_30/tensor_names$save_1/RestoreV2_30/shape_and_slices*
_output_shapes

:*
dtypes
2
ö
save_1/Assign_30Assign/linear/linear_model/right-hand-x/weights/part_0save_1/RestoreV2_30*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_31/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(linear/linear_model/right-hand-y/weights
x
$save_1/RestoreV2_31/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_31	RestoreV2save_1/Const save_1/RestoreV2_31/tensor_names$save_1/RestoreV2_31/shape_and_slices*
_output_shapes

:*
dtypes
2
ö
save_1/Assign_31Assign/linear/linear_model/right-hand-y/weights/part_0save_1/RestoreV2_31*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-hand-y/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_32/tensor_namesConst*<
value3B1B'linear/linear_model/right-hip-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_32/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_32	RestoreV2save_1/Const save_1/RestoreV2_32/tensor_names$save_1/RestoreV2_32/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_32Assign.linear/linear_model/right-hip-c/weights/part_0save_1/RestoreV2_32*
T0*A
_class7
53loc:@linear/linear_model/right-hip-c/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_33/tensor_namesConst*<
value3B1B'linear/linear_model/right-hip-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_33/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_33	RestoreV2save_1/Const save_1/RestoreV2_33/tensor_names$save_1/RestoreV2_33/shape_and_slices*
_output_shapes

:*
dtypes
2
ô
save_1/Assign_33Assign.linear/linear_model/right-hip-x/weights/part_0save_1/RestoreV2_33*
T0*A
_class7
53loc:@linear/linear_model/right-hip-x/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_34/tensor_namesConst*
dtype0*
_output_shapes
:*<
value3B1B'linear/linear_model/right-hip-y/weights
x
$save_1/RestoreV2_34/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_34	RestoreV2save_1/Const save_1/RestoreV2_34/tensor_names$save_1/RestoreV2_34/shape_and_slices*
dtypes
2*
_output_shapes

:
ô
save_1/Assign_34Assign.linear/linear_model/right-hip-y/weights/part_0save_1/RestoreV2_34*
T0*A
_class7
53loc:@linear/linear_model/right-hip-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_35/tensor_namesConst*=
value4B2B(linear/linear_model/right-knee-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_35/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_35	RestoreV2save_1/Const save_1/RestoreV2_35/tensor_names$save_1/RestoreV2_35/shape_and_slices*
_output_shapes

:*
dtypes
2
ö
save_1/Assign_35Assign/linear/linear_model/right-knee-c/weights/part_0save_1/RestoreV2_35*
validate_shape(*
_output_shapes

:*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-c/weights/part_0

 save_1/RestoreV2_36/tensor_namesConst*=
value4B2B(linear/linear_model/right-knee-x/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_36/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_36	RestoreV2save_1/Const save_1/RestoreV2_36/tensor_names$save_1/RestoreV2_36/shape_and_slices*
dtypes
2*
_output_shapes

:
ö
save_1/Assign_36Assign/linear/linear_model/right-knee-x/weights/part_0save_1/RestoreV2_36*
T0*B
_class8
64loc:@linear/linear_model/right-knee-x/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

 save_1/RestoreV2_37/tensor_namesConst*
dtype0*
_output_shapes
:*=
value4B2B(linear/linear_model/right-knee-y/weights
x
$save_1/RestoreV2_37/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_37	RestoreV2save_1/Const save_1/RestoreV2_37/tensor_names$save_1/RestoreV2_37/shape_and_slices*
_output_shapes

:*
dtypes
2
ö
save_1/Assign_37Assign/linear/linear_model/right-knee-y/weights/part_0save_1/RestoreV2_37*
use_locking(*
T0*B
_class8
64loc:@linear/linear_model/right-knee-y/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_38/tensor_namesConst*A
value8B6B,linear/linear_model/right-shoulder-c/weights*
dtype0*
_output_shapes
:
x
$save_1/RestoreV2_38/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_38	RestoreV2save_1/Const save_1/RestoreV2_38/tensor_names$save_1/RestoreV2_38/shape_and_slices*
dtypes
2*
_output_shapes

:
ţ
save_1/Assign_38Assign3linear/linear_model/right-shoulder-c/weights/part_0save_1/RestoreV2_38*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-c/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_39/tensor_namesConst*
dtype0*
_output_shapes
:*A
value8B6B,linear/linear_model/right-shoulder-x/weights
x
$save_1/RestoreV2_39/shape_and_slicesConst* 
valueBB1 1 0,1:0,1*
dtype0*
_output_shapes
:
§
save_1/RestoreV2_39	RestoreV2save_1/Const save_1/RestoreV2_39/tensor_names$save_1/RestoreV2_39/shape_and_slices*
dtypes
2*
_output_shapes

:
ţ
save_1/Assign_39Assign3linear/linear_model/right-shoulder-x/weights/part_0save_1/RestoreV2_39*
use_locking(*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-x/weights/part_0*
validate_shape(*
_output_shapes

:

 save_1/RestoreV2_40/tensor_namesConst*
dtype0*
_output_shapes
:*A
value8B6B,linear/linear_model/right-shoulder-y/weights
x
$save_1/RestoreV2_40/shape_and_slicesConst*
dtype0*
_output_shapes
:* 
valueBB1 1 0,1:0,1
§
save_1/RestoreV2_40	RestoreV2save_1/Const save_1/RestoreV2_40/tensor_names$save_1/RestoreV2_40/shape_and_slices*
_output_shapes

:*
dtypes
2
ţ
save_1/Assign_40Assign3linear/linear_model/right-shoulder-y/weights/part_0save_1/RestoreV2_40*
T0*F
_class<
:8loc:@linear/linear_model/right-shoulder-y/weights/part_0*
validate_shape(*
_output_shapes

:*
use_locking(

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_40
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"ŹZ
trainable_variablesZZ
 
1linear/linear_model/left-elbow-c/weights/part_0:06linear/linear_model/left-elbow-c/weights/part_0/Assign6linear/linear_model/left-elbow-c/weights/part_0/read:0"6
(linear/linear_model/left-elbow-c/weights  "2Clinear/linear_model/left-elbow-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/left-elbow-x/weights/part_0:06linear/linear_model/left-elbow-x/weights/part_0/Assign6linear/linear_model/left-elbow-x/weights/part_0/read:0"6
(linear/linear_model/left-elbow-x/weights  "2Clinear/linear_model/left-elbow-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/left-elbow-y/weights/part_0:06linear/linear_model/left-elbow-y/weights/part_0/Assign6linear/linear_model/left-elbow-y/weights/part_0/read:0"6
(linear/linear_model/left-elbow-y/weights  "2Clinear/linear_model/left-elbow-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-c/weights/part_0:05linear/linear_model/left-foot-c/weights/part_0/Assign5linear/linear_model/left-foot-c/weights/part_0/read:0"5
'linear/linear_model/left-foot-c/weights  "2Blinear/linear_model/left-foot-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-x/weights/part_0:05linear/linear_model/left-foot-x/weights/part_0/Assign5linear/linear_model/left-foot-x/weights/part_0/read:0"5
'linear/linear_model/left-foot-x/weights  "2Blinear/linear_model/left-foot-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-y/weights/part_0:05linear/linear_model/left-foot-y/weights/part_0/Assign5linear/linear_model/left-foot-y/weights/part_0/read:0"5
'linear/linear_model/left-foot-y/weights  "2Blinear/linear_model/left-foot-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-c/weights/part_0:05linear/linear_model/left-hand-c/weights/part_0/Assign5linear/linear_model/left-hand-c/weights/part_0/read:0"5
'linear/linear_model/left-hand-c/weights  "2Blinear/linear_model/left-hand-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-x/weights/part_0:05linear/linear_model/left-hand-x/weights/part_0/Assign5linear/linear_model/left-hand-x/weights/part_0/read:0"5
'linear/linear_model/left-hand-x/weights  "2Blinear/linear_model/left-hand-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-y/weights/part_0:05linear/linear_model/left-hand-y/weights/part_0/Assign5linear/linear_model/left-hand-y/weights/part_0/read:0"5
'linear/linear_model/left-hand-y/weights  "2Blinear/linear_model/left-hand-y/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-c/weights/part_0:04linear/linear_model/left-hip-c/weights/part_0/Assign4linear/linear_model/left-hip-c/weights/part_0/read:0"4
&linear/linear_model/left-hip-c/weights  "2Alinear/linear_model/left-hip-c/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-x/weights/part_0:04linear/linear_model/left-hip-x/weights/part_0/Assign4linear/linear_model/left-hip-x/weights/part_0/read:0"4
&linear/linear_model/left-hip-x/weights  "2Alinear/linear_model/left-hip-x/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-y/weights/part_0:04linear/linear_model/left-hip-y/weights/part_0/Assign4linear/linear_model/left-hip-y/weights/part_0/read:0"4
&linear/linear_model/left-hip-y/weights  "2Alinear/linear_model/left-hip-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-c/weights/part_0:05linear/linear_model/left-knee-c/weights/part_0/Assign5linear/linear_model/left-knee-c/weights/part_0/read:0"5
'linear/linear_model/left-knee-c/weights  "2Blinear/linear_model/left-knee-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-x/weights/part_0:05linear/linear_model/left-knee-x/weights/part_0/Assign5linear/linear_model/left-knee-x/weights/part_0/read:0"5
'linear/linear_model/left-knee-x/weights  "2Blinear/linear_model/left-knee-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-y/weights/part_0:05linear/linear_model/left-knee-y/weights/part_0/Assign5linear/linear_model/left-knee-y/weights/part_0/read:0"5
'linear/linear_model/left-knee-y/weights  "2Blinear/linear_model/left-knee-y/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-c/weights/part_0:09linear/linear_model/left-shoulder-c/weights/part_0/Assign9linear/linear_model/left-shoulder-c/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-c/weights  "2Flinear/linear_model/left-shoulder-c/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-x/weights/part_0:09linear/linear_model/left-shoulder-x/weights/part_0/Assign9linear/linear_model/left-shoulder-x/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-x/weights  "2Flinear/linear_model/left-shoulder-x/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-y/weights/part_0:09linear/linear_model/left-shoulder-y/weights/part_0/Assign9linear/linear_model/left-shoulder-y/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-y/weights  "2Flinear/linear_model/left-shoulder-y/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-c/weights/part_0:00linear/linear_model/neck-c/weights/part_0/Assign0linear/linear_model/neck-c/weights/part_0/read:0"0
"linear/linear_model/neck-c/weights  "2=linear/linear_model/neck-c/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-x/weights/part_0:00linear/linear_model/neck-x/weights/part_0/Assign0linear/linear_model/neck-x/weights/part_0/read:0"0
"linear/linear_model/neck-x/weights  "2=linear/linear_model/neck-x/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-y/weights/part_0:00linear/linear_model/neck-y/weights/part_0/Assign0linear/linear_model/neck-y/weights/part_0/read:0"0
"linear/linear_model/neck-y/weights  "2=linear/linear_model/neck-y/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-c/weights/part_0:07linear/linear_model/right-elbow-c/weights/part_0/Assign7linear/linear_model/right-elbow-c/weights/part_0/read:0"7
)linear/linear_model/right-elbow-c/weights  "2Dlinear/linear_model/right-elbow-c/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-x/weights/part_0:07linear/linear_model/right-elbow-x/weights/part_0/Assign7linear/linear_model/right-elbow-x/weights/part_0/read:0"7
)linear/linear_model/right-elbow-x/weights  "2Dlinear/linear_model/right-elbow-x/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-y/weights/part_0:07linear/linear_model/right-elbow-y/weights/part_0/Assign7linear/linear_model/right-elbow-y/weights/part_0/read:0"7
)linear/linear_model/right-elbow-y/weights  "2Dlinear/linear_model/right-elbow-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-c/weights/part_0:06linear/linear_model/right-foot-c/weights/part_0/Assign6linear/linear_model/right-foot-c/weights/part_0/read:0"6
(linear/linear_model/right-foot-c/weights  "2Clinear/linear_model/right-foot-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-x/weights/part_0:06linear/linear_model/right-foot-x/weights/part_0/Assign6linear/linear_model/right-foot-x/weights/part_0/read:0"6
(linear/linear_model/right-foot-x/weights  "2Clinear/linear_model/right-foot-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-y/weights/part_0:06linear/linear_model/right-foot-y/weights/part_0/Assign6linear/linear_model/right-foot-y/weights/part_0/read:0"6
(linear/linear_model/right-foot-y/weights  "2Clinear/linear_model/right-foot-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-c/weights/part_0:06linear/linear_model/right-hand-c/weights/part_0/Assign6linear/linear_model/right-hand-c/weights/part_0/read:0"6
(linear/linear_model/right-hand-c/weights  "2Clinear/linear_model/right-hand-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-x/weights/part_0:06linear/linear_model/right-hand-x/weights/part_0/Assign6linear/linear_model/right-hand-x/weights/part_0/read:0"6
(linear/linear_model/right-hand-x/weights  "2Clinear/linear_model/right-hand-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-y/weights/part_0:06linear/linear_model/right-hand-y/weights/part_0/Assign6linear/linear_model/right-hand-y/weights/part_0/read:0"6
(linear/linear_model/right-hand-y/weights  "2Clinear/linear_model/right-hand-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-c/weights/part_0:05linear/linear_model/right-hip-c/weights/part_0/Assign5linear/linear_model/right-hip-c/weights/part_0/read:0"5
'linear/linear_model/right-hip-c/weights  "2Blinear/linear_model/right-hip-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-x/weights/part_0:05linear/linear_model/right-hip-x/weights/part_0/Assign5linear/linear_model/right-hip-x/weights/part_0/read:0"5
'linear/linear_model/right-hip-x/weights  "2Blinear/linear_model/right-hip-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-y/weights/part_0:05linear/linear_model/right-hip-y/weights/part_0/Assign5linear/linear_model/right-hip-y/weights/part_0/read:0"5
'linear/linear_model/right-hip-y/weights  "2Blinear/linear_model/right-hip-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-c/weights/part_0:06linear/linear_model/right-knee-c/weights/part_0/Assign6linear/linear_model/right-knee-c/weights/part_0/read:0"6
(linear/linear_model/right-knee-c/weights  "2Clinear/linear_model/right-knee-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-x/weights/part_0:06linear/linear_model/right-knee-x/weights/part_0/Assign6linear/linear_model/right-knee-x/weights/part_0/read:0"6
(linear/linear_model/right-knee-x/weights  "2Clinear/linear_model/right-knee-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-y/weights/part_0:06linear/linear_model/right-knee-y/weights/part_0/Assign6linear/linear_model/right-knee-y/weights/part_0/read:0"6
(linear/linear_model/right-knee-y/weights  "2Clinear/linear_model/right-knee-y/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-c/weights/part_0:0:linear/linear_model/right-shoulder-c/weights/part_0/Assign:linear/linear_model/right-shoulder-c/weights/part_0/read:0":
,linear/linear_model/right-shoulder-c/weights  "2Glinear/linear_model/right-shoulder-c/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-x/weights/part_0:0:linear/linear_model/right-shoulder-x/weights/part_0/Assign:linear/linear_model/right-shoulder-x/weights/part_0/read:0":
,linear/linear_model/right-shoulder-x/weights  "2Glinear/linear_model/right-shoulder-x/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-y/weights/part_0:0:linear/linear_model/right-shoulder-y/weights/part_0/Assign:linear/linear_model/right-shoulder-y/weights/part_0/read:0":
,linear/linear_model/right-shoulder-y/weights  "2Glinear/linear_model/right-shoulder-y/weights/part_0/Initializer/zeros:0
ő
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0" 
global_step

global_step:0"üZ
	variablesîZëZ
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
 
1linear/linear_model/left-elbow-c/weights/part_0:06linear/linear_model/left-elbow-c/weights/part_0/Assign6linear/linear_model/left-elbow-c/weights/part_0/read:0"6
(linear/linear_model/left-elbow-c/weights  "2Clinear/linear_model/left-elbow-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/left-elbow-x/weights/part_0:06linear/linear_model/left-elbow-x/weights/part_0/Assign6linear/linear_model/left-elbow-x/weights/part_0/read:0"6
(linear/linear_model/left-elbow-x/weights  "2Clinear/linear_model/left-elbow-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/left-elbow-y/weights/part_0:06linear/linear_model/left-elbow-y/weights/part_0/Assign6linear/linear_model/left-elbow-y/weights/part_0/read:0"6
(linear/linear_model/left-elbow-y/weights  "2Clinear/linear_model/left-elbow-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-c/weights/part_0:05linear/linear_model/left-foot-c/weights/part_0/Assign5linear/linear_model/left-foot-c/weights/part_0/read:0"5
'linear/linear_model/left-foot-c/weights  "2Blinear/linear_model/left-foot-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-x/weights/part_0:05linear/linear_model/left-foot-x/weights/part_0/Assign5linear/linear_model/left-foot-x/weights/part_0/read:0"5
'linear/linear_model/left-foot-x/weights  "2Blinear/linear_model/left-foot-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-y/weights/part_0:05linear/linear_model/left-foot-y/weights/part_0/Assign5linear/linear_model/left-foot-y/weights/part_0/read:0"5
'linear/linear_model/left-foot-y/weights  "2Blinear/linear_model/left-foot-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-c/weights/part_0:05linear/linear_model/left-hand-c/weights/part_0/Assign5linear/linear_model/left-hand-c/weights/part_0/read:0"5
'linear/linear_model/left-hand-c/weights  "2Blinear/linear_model/left-hand-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-x/weights/part_0:05linear/linear_model/left-hand-x/weights/part_0/Assign5linear/linear_model/left-hand-x/weights/part_0/read:0"5
'linear/linear_model/left-hand-x/weights  "2Blinear/linear_model/left-hand-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-y/weights/part_0:05linear/linear_model/left-hand-y/weights/part_0/Assign5linear/linear_model/left-hand-y/weights/part_0/read:0"5
'linear/linear_model/left-hand-y/weights  "2Blinear/linear_model/left-hand-y/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-c/weights/part_0:04linear/linear_model/left-hip-c/weights/part_0/Assign4linear/linear_model/left-hip-c/weights/part_0/read:0"4
&linear/linear_model/left-hip-c/weights  "2Alinear/linear_model/left-hip-c/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-x/weights/part_0:04linear/linear_model/left-hip-x/weights/part_0/Assign4linear/linear_model/left-hip-x/weights/part_0/read:0"4
&linear/linear_model/left-hip-x/weights  "2Alinear/linear_model/left-hip-x/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-y/weights/part_0:04linear/linear_model/left-hip-y/weights/part_0/Assign4linear/linear_model/left-hip-y/weights/part_0/read:0"4
&linear/linear_model/left-hip-y/weights  "2Alinear/linear_model/left-hip-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-c/weights/part_0:05linear/linear_model/left-knee-c/weights/part_0/Assign5linear/linear_model/left-knee-c/weights/part_0/read:0"5
'linear/linear_model/left-knee-c/weights  "2Blinear/linear_model/left-knee-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-x/weights/part_0:05linear/linear_model/left-knee-x/weights/part_0/Assign5linear/linear_model/left-knee-x/weights/part_0/read:0"5
'linear/linear_model/left-knee-x/weights  "2Blinear/linear_model/left-knee-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-y/weights/part_0:05linear/linear_model/left-knee-y/weights/part_0/Assign5linear/linear_model/left-knee-y/weights/part_0/read:0"5
'linear/linear_model/left-knee-y/weights  "2Blinear/linear_model/left-knee-y/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-c/weights/part_0:09linear/linear_model/left-shoulder-c/weights/part_0/Assign9linear/linear_model/left-shoulder-c/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-c/weights  "2Flinear/linear_model/left-shoulder-c/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-x/weights/part_0:09linear/linear_model/left-shoulder-x/weights/part_0/Assign9linear/linear_model/left-shoulder-x/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-x/weights  "2Flinear/linear_model/left-shoulder-x/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-y/weights/part_0:09linear/linear_model/left-shoulder-y/weights/part_0/Assign9linear/linear_model/left-shoulder-y/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-y/weights  "2Flinear/linear_model/left-shoulder-y/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-c/weights/part_0:00linear/linear_model/neck-c/weights/part_0/Assign0linear/linear_model/neck-c/weights/part_0/read:0"0
"linear/linear_model/neck-c/weights  "2=linear/linear_model/neck-c/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-x/weights/part_0:00linear/linear_model/neck-x/weights/part_0/Assign0linear/linear_model/neck-x/weights/part_0/read:0"0
"linear/linear_model/neck-x/weights  "2=linear/linear_model/neck-x/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-y/weights/part_0:00linear/linear_model/neck-y/weights/part_0/Assign0linear/linear_model/neck-y/weights/part_0/read:0"0
"linear/linear_model/neck-y/weights  "2=linear/linear_model/neck-y/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-c/weights/part_0:07linear/linear_model/right-elbow-c/weights/part_0/Assign7linear/linear_model/right-elbow-c/weights/part_0/read:0"7
)linear/linear_model/right-elbow-c/weights  "2Dlinear/linear_model/right-elbow-c/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-x/weights/part_0:07linear/linear_model/right-elbow-x/weights/part_0/Assign7linear/linear_model/right-elbow-x/weights/part_0/read:0"7
)linear/linear_model/right-elbow-x/weights  "2Dlinear/linear_model/right-elbow-x/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-y/weights/part_0:07linear/linear_model/right-elbow-y/weights/part_0/Assign7linear/linear_model/right-elbow-y/weights/part_0/read:0"7
)linear/linear_model/right-elbow-y/weights  "2Dlinear/linear_model/right-elbow-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-c/weights/part_0:06linear/linear_model/right-foot-c/weights/part_0/Assign6linear/linear_model/right-foot-c/weights/part_0/read:0"6
(linear/linear_model/right-foot-c/weights  "2Clinear/linear_model/right-foot-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-x/weights/part_0:06linear/linear_model/right-foot-x/weights/part_0/Assign6linear/linear_model/right-foot-x/weights/part_0/read:0"6
(linear/linear_model/right-foot-x/weights  "2Clinear/linear_model/right-foot-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-y/weights/part_0:06linear/linear_model/right-foot-y/weights/part_0/Assign6linear/linear_model/right-foot-y/weights/part_0/read:0"6
(linear/linear_model/right-foot-y/weights  "2Clinear/linear_model/right-foot-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-c/weights/part_0:06linear/linear_model/right-hand-c/weights/part_0/Assign6linear/linear_model/right-hand-c/weights/part_0/read:0"6
(linear/linear_model/right-hand-c/weights  "2Clinear/linear_model/right-hand-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-x/weights/part_0:06linear/linear_model/right-hand-x/weights/part_0/Assign6linear/linear_model/right-hand-x/weights/part_0/read:0"6
(linear/linear_model/right-hand-x/weights  "2Clinear/linear_model/right-hand-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-y/weights/part_0:06linear/linear_model/right-hand-y/weights/part_0/Assign6linear/linear_model/right-hand-y/weights/part_0/read:0"6
(linear/linear_model/right-hand-y/weights  "2Clinear/linear_model/right-hand-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-c/weights/part_0:05linear/linear_model/right-hip-c/weights/part_0/Assign5linear/linear_model/right-hip-c/weights/part_0/read:0"5
'linear/linear_model/right-hip-c/weights  "2Blinear/linear_model/right-hip-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-x/weights/part_0:05linear/linear_model/right-hip-x/weights/part_0/Assign5linear/linear_model/right-hip-x/weights/part_0/read:0"5
'linear/linear_model/right-hip-x/weights  "2Blinear/linear_model/right-hip-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-y/weights/part_0:05linear/linear_model/right-hip-y/weights/part_0/Assign5linear/linear_model/right-hip-y/weights/part_0/read:0"5
'linear/linear_model/right-hip-y/weights  "2Blinear/linear_model/right-hip-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-c/weights/part_0:06linear/linear_model/right-knee-c/weights/part_0/Assign6linear/linear_model/right-knee-c/weights/part_0/read:0"6
(linear/linear_model/right-knee-c/weights  "2Clinear/linear_model/right-knee-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-x/weights/part_0:06linear/linear_model/right-knee-x/weights/part_0/Assign6linear/linear_model/right-knee-x/weights/part_0/read:0"6
(linear/linear_model/right-knee-x/weights  "2Clinear/linear_model/right-knee-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-y/weights/part_0:06linear/linear_model/right-knee-y/weights/part_0/Assign6linear/linear_model/right-knee-y/weights/part_0/read:0"6
(linear/linear_model/right-knee-y/weights  "2Clinear/linear_model/right-knee-y/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-c/weights/part_0:0:linear/linear_model/right-shoulder-c/weights/part_0/Assign:linear/linear_model/right-shoulder-c/weights/part_0/read:0":
,linear/linear_model/right-shoulder-c/weights  "2Glinear/linear_model/right-shoulder-c/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-x/weights/part_0:0:linear/linear_model/right-shoulder-x/weights/part_0/Assign:linear/linear_model/right-shoulder-x/weights/part_0/read:0":
,linear/linear_model/right-shoulder-x/weights  "2Glinear/linear_model/right-shoulder-x/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-y/weights/part_0:0:linear/linear_model/right-shoulder-y/weights/part_0/Assign:linear/linear_model/right-shoulder-y/weights/part_0/read:0":
,linear/linear_model/right-shoulder-y/weights  "2Glinear/linear_model/right-shoulder-y/weights/part_0/Initializer/zeros:0
ő
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0" 
legacy_init_op


group_deps"¨Z
model_variablesZZ
 
1linear/linear_model/left-elbow-c/weights/part_0:06linear/linear_model/left-elbow-c/weights/part_0/Assign6linear/linear_model/left-elbow-c/weights/part_0/read:0"6
(linear/linear_model/left-elbow-c/weights  "2Clinear/linear_model/left-elbow-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/left-elbow-x/weights/part_0:06linear/linear_model/left-elbow-x/weights/part_0/Assign6linear/linear_model/left-elbow-x/weights/part_0/read:0"6
(linear/linear_model/left-elbow-x/weights  "2Clinear/linear_model/left-elbow-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/left-elbow-y/weights/part_0:06linear/linear_model/left-elbow-y/weights/part_0/Assign6linear/linear_model/left-elbow-y/weights/part_0/read:0"6
(linear/linear_model/left-elbow-y/weights  "2Clinear/linear_model/left-elbow-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-c/weights/part_0:05linear/linear_model/left-foot-c/weights/part_0/Assign5linear/linear_model/left-foot-c/weights/part_0/read:0"5
'linear/linear_model/left-foot-c/weights  "2Blinear/linear_model/left-foot-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-x/weights/part_0:05linear/linear_model/left-foot-x/weights/part_0/Assign5linear/linear_model/left-foot-x/weights/part_0/read:0"5
'linear/linear_model/left-foot-x/weights  "2Blinear/linear_model/left-foot-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-foot-y/weights/part_0:05linear/linear_model/left-foot-y/weights/part_0/Assign5linear/linear_model/left-foot-y/weights/part_0/read:0"5
'linear/linear_model/left-foot-y/weights  "2Blinear/linear_model/left-foot-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-c/weights/part_0:05linear/linear_model/left-hand-c/weights/part_0/Assign5linear/linear_model/left-hand-c/weights/part_0/read:0"5
'linear/linear_model/left-hand-c/weights  "2Blinear/linear_model/left-hand-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-x/weights/part_0:05linear/linear_model/left-hand-x/weights/part_0/Assign5linear/linear_model/left-hand-x/weights/part_0/read:0"5
'linear/linear_model/left-hand-x/weights  "2Blinear/linear_model/left-hand-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-hand-y/weights/part_0:05linear/linear_model/left-hand-y/weights/part_0/Assign5linear/linear_model/left-hand-y/weights/part_0/read:0"5
'linear/linear_model/left-hand-y/weights  "2Blinear/linear_model/left-hand-y/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-c/weights/part_0:04linear/linear_model/left-hip-c/weights/part_0/Assign4linear/linear_model/left-hip-c/weights/part_0/read:0"4
&linear/linear_model/left-hip-c/weights  "2Alinear/linear_model/left-hip-c/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-x/weights/part_0:04linear/linear_model/left-hip-x/weights/part_0/Assign4linear/linear_model/left-hip-x/weights/part_0/read:0"4
&linear/linear_model/left-hip-x/weights  "2Alinear/linear_model/left-hip-x/weights/part_0/Initializer/zeros:0

/linear/linear_model/left-hip-y/weights/part_0:04linear/linear_model/left-hip-y/weights/part_0/Assign4linear/linear_model/left-hip-y/weights/part_0/read:0"4
&linear/linear_model/left-hip-y/weights  "2Alinear/linear_model/left-hip-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-c/weights/part_0:05linear/linear_model/left-knee-c/weights/part_0/Assign5linear/linear_model/left-knee-c/weights/part_0/read:0"5
'linear/linear_model/left-knee-c/weights  "2Blinear/linear_model/left-knee-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-x/weights/part_0:05linear/linear_model/left-knee-x/weights/part_0/Assign5linear/linear_model/left-knee-x/weights/part_0/read:0"5
'linear/linear_model/left-knee-x/weights  "2Blinear/linear_model/left-knee-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/left-knee-y/weights/part_0:05linear/linear_model/left-knee-y/weights/part_0/Assign5linear/linear_model/left-knee-y/weights/part_0/read:0"5
'linear/linear_model/left-knee-y/weights  "2Blinear/linear_model/left-knee-y/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-c/weights/part_0:09linear/linear_model/left-shoulder-c/weights/part_0/Assign9linear/linear_model/left-shoulder-c/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-c/weights  "2Flinear/linear_model/left-shoulder-c/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-x/weights/part_0:09linear/linear_model/left-shoulder-x/weights/part_0/Assign9linear/linear_model/left-shoulder-x/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-x/weights  "2Flinear/linear_model/left-shoulder-x/weights/part_0/Initializer/zeros:0
Ż
4linear/linear_model/left-shoulder-y/weights/part_0:09linear/linear_model/left-shoulder-y/weights/part_0/Assign9linear/linear_model/left-shoulder-y/weights/part_0/read:0"9
+linear/linear_model/left-shoulder-y/weights  "2Flinear/linear_model/left-shoulder-y/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-c/weights/part_0:00linear/linear_model/neck-c/weights/part_0/Assign0linear/linear_model/neck-c/weights/part_0/read:0"0
"linear/linear_model/neck-c/weights  "2=linear/linear_model/neck-c/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-x/weights/part_0:00linear/linear_model/neck-x/weights/part_0/Assign0linear/linear_model/neck-x/weights/part_0/read:0"0
"linear/linear_model/neck-x/weights  "2=linear/linear_model/neck-x/weights/part_0/Initializer/zeros:0

+linear/linear_model/neck-y/weights/part_0:00linear/linear_model/neck-y/weights/part_0/Assign0linear/linear_model/neck-y/weights/part_0/read:0"0
"linear/linear_model/neck-y/weights  "2=linear/linear_model/neck-y/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-c/weights/part_0:07linear/linear_model/right-elbow-c/weights/part_0/Assign7linear/linear_model/right-elbow-c/weights/part_0/read:0"7
)linear/linear_model/right-elbow-c/weights  "2Dlinear/linear_model/right-elbow-c/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-x/weights/part_0:07linear/linear_model/right-elbow-x/weights/part_0/Assign7linear/linear_model/right-elbow-x/weights/part_0/read:0"7
)linear/linear_model/right-elbow-x/weights  "2Dlinear/linear_model/right-elbow-x/weights/part_0/Initializer/zeros:0
Ľ
2linear/linear_model/right-elbow-y/weights/part_0:07linear/linear_model/right-elbow-y/weights/part_0/Assign7linear/linear_model/right-elbow-y/weights/part_0/read:0"7
)linear/linear_model/right-elbow-y/weights  "2Dlinear/linear_model/right-elbow-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-c/weights/part_0:06linear/linear_model/right-foot-c/weights/part_0/Assign6linear/linear_model/right-foot-c/weights/part_0/read:0"6
(linear/linear_model/right-foot-c/weights  "2Clinear/linear_model/right-foot-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-x/weights/part_0:06linear/linear_model/right-foot-x/weights/part_0/Assign6linear/linear_model/right-foot-x/weights/part_0/read:0"6
(linear/linear_model/right-foot-x/weights  "2Clinear/linear_model/right-foot-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-foot-y/weights/part_0:06linear/linear_model/right-foot-y/weights/part_0/Assign6linear/linear_model/right-foot-y/weights/part_0/read:0"6
(linear/linear_model/right-foot-y/weights  "2Clinear/linear_model/right-foot-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-c/weights/part_0:06linear/linear_model/right-hand-c/weights/part_0/Assign6linear/linear_model/right-hand-c/weights/part_0/read:0"6
(linear/linear_model/right-hand-c/weights  "2Clinear/linear_model/right-hand-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-x/weights/part_0:06linear/linear_model/right-hand-x/weights/part_0/Assign6linear/linear_model/right-hand-x/weights/part_0/read:0"6
(linear/linear_model/right-hand-x/weights  "2Clinear/linear_model/right-hand-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-hand-y/weights/part_0:06linear/linear_model/right-hand-y/weights/part_0/Assign6linear/linear_model/right-hand-y/weights/part_0/read:0"6
(linear/linear_model/right-hand-y/weights  "2Clinear/linear_model/right-hand-y/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-c/weights/part_0:05linear/linear_model/right-hip-c/weights/part_0/Assign5linear/linear_model/right-hip-c/weights/part_0/read:0"5
'linear/linear_model/right-hip-c/weights  "2Blinear/linear_model/right-hip-c/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-x/weights/part_0:05linear/linear_model/right-hip-x/weights/part_0/Assign5linear/linear_model/right-hip-x/weights/part_0/read:0"5
'linear/linear_model/right-hip-x/weights  "2Blinear/linear_model/right-hip-x/weights/part_0/Initializer/zeros:0

0linear/linear_model/right-hip-y/weights/part_0:05linear/linear_model/right-hip-y/weights/part_0/Assign5linear/linear_model/right-hip-y/weights/part_0/read:0"5
'linear/linear_model/right-hip-y/weights  "2Blinear/linear_model/right-hip-y/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-c/weights/part_0:06linear/linear_model/right-knee-c/weights/part_0/Assign6linear/linear_model/right-knee-c/weights/part_0/read:0"6
(linear/linear_model/right-knee-c/weights  "2Clinear/linear_model/right-knee-c/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-x/weights/part_0:06linear/linear_model/right-knee-x/weights/part_0/Assign6linear/linear_model/right-knee-x/weights/part_0/read:0"6
(linear/linear_model/right-knee-x/weights  "2Clinear/linear_model/right-knee-x/weights/part_0/Initializer/zeros:0
 
1linear/linear_model/right-knee-y/weights/part_0:06linear/linear_model/right-knee-y/weights/part_0/Assign6linear/linear_model/right-knee-y/weights/part_0/read:0"6
(linear/linear_model/right-knee-y/weights  "2Clinear/linear_model/right-knee-y/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-c/weights/part_0:0:linear/linear_model/right-shoulder-c/weights/part_0/Assign:linear/linear_model/right-shoulder-c/weights/part_0/read:0":
,linear/linear_model/right-shoulder-c/weights  "2Glinear/linear_model/right-shoulder-c/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-x/weights/part_0:0:linear/linear_model/right-shoulder-x/weights/part_0/Assign:linear/linear_model/right-shoulder-x/weights/part_0/read:0":
,linear/linear_model/right-shoulder-x/weights  "2Glinear/linear_model/right-shoulder-x/weights/part_0/Initializer/zeros:0
´
5linear/linear_model/right-shoulder-y/weights/part_0:0:linear/linear_model/right-shoulder-y/weights/part_0/Assign:linear/linear_model/right-shoulder-y/weights/part_0/read:0":
,linear/linear_model/right-shoulder-y/weights  "2Glinear/linear_model/right-shoulder-y/weights/part_0/Initializer/zeros:0
ő
)linear/linear_model/bias_weights/part_0:0.linear/linear_model/bias_weights/part_0/Assign.linear/linear_model/bias_weights/part_0/read:0"+
 linear/linear_model/bias_weights "2;linear/linear_model/bias_weights/part_0/Initializer/zeros:0*Ň
classificationż
+
inputs!
input_example_tensor:04
classes)
linear/head/Tile:0˙˙˙˙˙˙˙˙˙=
scores3
'linear/head/predictions/probabilities:0 tensorflow/serving/classify*

regression
+
inputs!
input_example_tensor:09
outputs.
"linear/head/predictions/logistic:0 tensorflow/serving/regress*Ó
serving_defaultż
+
inputs!
input_example_tensor:0=
scores3
'linear/head/predictions/probabilities:0 4
classes)
linear/head/Tile:0˙˙˙˙˙˙˙˙˙tensorflow/serving/classify*
predict˙
-
examples!
input_example_tensor:0:
logistic.
"linear/head/predictions/logistic:0 :
	class_ids-
!linear/head/predictions/classes:0	 D
probabilities3
'linear/head/predictions/probabilities:0 <
classes1
%linear/head/predictions/str_classes:0 6
logits,
 linear/head/predictions/logits:0 tensorflow/serving/predict