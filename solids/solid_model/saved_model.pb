??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
9
Cholesky

input"T
output"T"
Ttype:	
2
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
x
MatrixBandPart

input"T
	num_lower"Tindex
	num_upper"Tindex	
band"T"	
Ttype"
Tindextype0	:
2	
?
MatrixDiagV3
diagonal"T
k
num_rows
num_cols
padding_value"T
output"T"	
Ttype"Q
alignstring
RIGHT_LEFT:2
0
LEFT_RIGHT
RIGHT_LEFT	LEFT_LEFTRIGHT_RIGHT
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0?
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
?
SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718ݬ
z
dense_54/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_54/kernel
s
#dense_54/kernel/Read/ReadVariableOpReadVariableOpdense_54/kernel*
_output_shapes

:d*
dtype0
r
dense_54/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_54/bias
k
!dense_54/bias/Read/ReadVariableOpReadVariableOpdense_54/bias*
_output_shapes
:d*
dtype0
z
dense_55/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_55/kernel
s
#dense_55/kernel/Read/ReadVariableOpReadVariableOpdense_55/kernel*
_output_shapes

:dd*
dtype0
r
dense_55/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_55/bias
k
!dense_55/bias/Read/ReadVariableOpReadVariableOpdense_55/bias*
_output_shapes
:d*
dtype0
z
dense_56/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_56/kernel
s
#dense_56/kernel/Read/ReadVariableOpReadVariableOpdense_56/kernel*
_output_shapes

:dd*
dtype0
r
dense_56/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_56/bias
k
!dense_56/bias/Read/ReadVariableOpReadVariableOpdense_56/bias*
_output_shapes
:d*
dtype0
z
dense_57/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_57/kernel
s
#dense_57/kernel/Read/ReadVariableOpReadVariableOpdense_57/kernel*
_output_shapes

:dd*
dtype0
r
dense_57/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_57/bias
k
!dense_57/bias/Read/ReadVariableOpReadVariableOpdense_57/bias*
_output_shapes
:d*
dtype0
z
dense_58/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_58/kernel
s
#dense_58/kernel/Read/ReadVariableOpReadVariableOpdense_58/kernel*
_output_shapes

:dd*
dtype0
r
dense_58/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_58/bias
k
!dense_58/bias/Read/ReadVariableOpReadVariableOpdense_58/bias*
_output_shapes
:d*
dtype0
?
mixture_layer_9/dense_59/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:di*0
shared_name!mixture_layer_9/dense_59/kernel
?
3mixture_layer_9/dense_59/kernel/Read/ReadVariableOpReadVariableOpmixture_layer_9/dense_59/kernel*
_output_shapes

:di*
dtype0
?
mixture_layer_9/dense_59/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*.
shared_namemixture_layer_9/dense_59/bias
?
1mixture_layer_9/dense_59/bias/Read/ReadVariableOpReadVariableOpmixture_layer_9/dense_59/bias*
_output_shapes
:i*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
~
dense_54/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*"
shared_namedense_54/kernel/m
w
%dense_54/kernel/m/Read/ReadVariableOpReadVariableOpdense_54/kernel/m*
_output_shapes

:d*
dtype0
v
dense_54/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_54/bias/m
o
#dense_54/bias/m/Read/ReadVariableOpReadVariableOpdense_54/bias/m*
_output_shapes
:d*
dtype0
~
dense_55/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_55/kernel/m
w
%dense_55/kernel/m/Read/ReadVariableOpReadVariableOpdense_55/kernel/m*
_output_shapes

:dd*
dtype0
v
dense_55/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_55/bias/m
o
#dense_55/bias/m/Read/ReadVariableOpReadVariableOpdense_55/bias/m*
_output_shapes
:d*
dtype0
~
dense_56/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_56/kernel/m
w
%dense_56/kernel/m/Read/ReadVariableOpReadVariableOpdense_56/kernel/m*
_output_shapes

:dd*
dtype0
v
dense_56/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_56/bias/m
o
#dense_56/bias/m/Read/ReadVariableOpReadVariableOpdense_56/bias/m*
_output_shapes
:d*
dtype0
~
dense_57/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_57/kernel/m
w
%dense_57/kernel/m/Read/ReadVariableOpReadVariableOpdense_57/kernel/m*
_output_shapes

:dd*
dtype0
v
dense_57/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_57/bias/m
o
#dense_57/bias/m/Read/ReadVariableOpReadVariableOpdense_57/bias/m*
_output_shapes
:d*
dtype0
~
dense_58/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_58/kernel/m
w
%dense_58/kernel/m/Read/ReadVariableOpReadVariableOpdense_58/kernel/m*
_output_shapes

:dd*
dtype0
v
dense_58/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_58/bias/m
o
#dense_58/bias/m/Read/ReadVariableOpReadVariableOpdense_58/bias/m*
_output_shapes
:d*
dtype0
?
!mixture_layer_9/dense_59/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:di*2
shared_name#!mixture_layer_9/dense_59/kernel/m
?
5mixture_layer_9/dense_59/kernel/m/Read/ReadVariableOpReadVariableOp!mixture_layer_9/dense_59/kernel/m*
_output_shapes

:di*
dtype0
?
mixture_layer_9/dense_59/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*0
shared_name!mixture_layer_9/dense_59/bias/m
?
3mixture_layer_9/dense_59/bias/m/Read/ReadVariableOpReadVariableOpmixture_layer_9/dense_59/bias/m*
_output_shapes
:i*
dtype0
~
dense_54/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*"
shared_namedense_54/kernel/v
w
%dense_54/kernel/v/Read/ReadVariableOpReadVariableOpdense_54/kernel/v*
_output_shapes

:d*
dtype0
v
dense_54/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_54/bias/v
o
#dense_54/bias/v/Read/ReadVariableOpReadVariableOpdense_54/bias/v*
_output_shapes
:d*
dtype0
~
dense_55/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_55/kernel/v
w
%dense_55/kernel/v/Read/ReadVariableOpReadVariableOpdense_55/kernel/v*
_output_shapes

:dd*
dtype0
v
dense_55/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_55/bias/v
o
#dense_55/bias/v/Read/ReadVariableOpReadVariableOpdense_55/bias/v*
_output_shapes
:d*
dtype0
~
dense_56/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_56/kernel/v
w
%dense_56/kernel/v/Read/ReadVariableOpReadVariableOpdense_56/kernel/v*
_output_shapes

:dd*
dtype0
v
dense_56/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_56/bias/v
o
#dense_56/bias/v/Read/ReadVariableOpReadVariableOpdense_56/bias/v*
_output_shapes
:d*
dtype0
~
dense_57/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_57/kernel/v
w
%dense_57/kernel/v/Read/ReadVariableOpReadVariableOpdense_57/kernel/v*
_output_shapes

:dd*
dtype0
v
dense_57/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_57/bias/v
o
#dense_57/bias/v/Read/ReadVariableOpReadVariableOpdense_57/bias/v*
_output_shapes
:d*
dtype0
~
dense_58/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*"
shared_namedense_58/kernel/v
w
%dense_58/kernel/v/Read/ReadVariableOpReadVariableOpdense_58/kernel/v*
_output_shapes

:dd*
dtype0
v
dense_58/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d* 
shared_namedense_58/bias/v
o
#dense_58/bias/v/Read/ReadVariableOpReadVariableOpdense_58/bias/v*
_output_shapes
:d*
dtype0
?
!mixture_layer_9/dense_59/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:di*2
shared_name#!mixture_layer_9/dense_59/kernel/v
?
5mixture_layer_9/dense_59/kernel/v/Read/ReadVariableOpReadVariableOp!mixture_layer_9/dense_59/kernel/v*
_output_shapes

:di*
dtype0
?
mixture_layer_9/dense_59/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:i*0
shared_name!mixture_layer_9/dense_59/bias/v
?
3mixture_layer_9/dense_59/bias/v/Read/ReadVariableOpReadVariableOpmixture_layer_9/dense_59/bias/v*
_output_shapes
:i*
dtype0
J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *o?:

NoOpNoOp
?;
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*?:
value?:B?: B?:
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
h

%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
^

+_layer
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?mcmdmemfmgmhmi mj%mk&ml0mm1mnvovpvqvrvsvtvu vv%vw&vx0vy1vz
V
0
1
2
3
4
5
6
 7
%8
&9
010
111
 
V
0
1
2
3
4
5
6
 7
%8
&9
010
111
?
	variables
2layer_regularization_losses
3metrics
4non_trainable_variables
	regularization_losses

trainable_variables
5layer_metrics

6layers
 
[Y
VARIABLE_VALUEdense_54/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_54/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
7layer_regularization_losses
trainable_variables
8non_trainable_variables
regularization_losses
9metrics
:layer_metrics

;layers
[Y
VARIABLE_VALUEdense_55/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_55/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
<layer_regularization_losses
trainable_variables
=non_trainable_variables
regularization_losses
>metrics
?layer_metrics

@layers
[Y
VARIABLE_VALUEdense_56/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_56/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
	variables
Alayer_regularization_losses
trainable_variables
Bnon_trainable_variables
regularization_losses
Cmetrics
Dlayer_metrics

Elayers
[Y
VARIABLE_VALUEdense_57/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_57/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

0
 1

0
 1
 
?
!	variables
Flayer_regularization_losses
"trainable_variables
Gnon_trainable_variables
#regularization_losses
Hmetrics
Ilayer_metrics

Jlayers
[Y
VARIABLE_VALUEdense_58/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_58/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1

%0
&1
 
?
'	variables
Klayer_regularization_losses
(trainable_variables
Lnon_trainable_variables
)regularization_losses
Mmetrics
Nlayer_metrics

Olayers
h

0kernel
1bias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api

00
11

00
11
 
?
,	variables
Tlayer_regularization_losses
-trainable_variables
Unon_trainable_variables
.regularization_losses
Vmetrics
Wlayer_metrics

Xlayers
\Z
VARIABLE_VALUEmixture_layer_9/dense_59/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEmixture_layer_9/dense_59/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
 

Y0
 
 
*
0
1
2
3
4
5
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
 
 
 
 
 
 

00
11

00
11
 
?
P	variables
Zlayer_regularization_losses
Qtrainable_variables
[non_trainable_variables
Rregularization_losses
\metrics
]layer_metrics

^layers
 
 
 
 

+0
4
	_total
	`count
a	variables
b	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

_0
`1

a	variables
yw
VARIABLE_VALUEdense_54/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_54/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_55/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_55/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_56/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_56/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_57/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_57/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_58/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_58/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!mixture_layer_9/dense_59/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEmixture_layer_9/dense_59/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_54/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_54/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_55/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_55/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_56/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_56/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_57/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_57/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEdense_58/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEdense_58/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE!mixture_layer_9/dense_59/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEmixture_layer_9/dense_59/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_54_inputPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_54_inputdense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasmixture_layer_9/dense_59/kernelmixture_layer_9/dense_59/biasConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_30338
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_54/kernel/Read/ReadVariableOp!dense_54/bias/Read/ReadVariableOp#dense_55/kernel/Read/ReadVariableOp!dense_55/bias/Read/ReadVariableOp#dense_56/kernel/Read/ReadVariableOp!dense_56/bias/Read/ReadVariableOp#dense_57/kernel/Read/ReadVariableOp!dense_57/bias/Read/ReadVariableOp#dense_58/kernel/Read/ReadVariableOp!dense_58/bias/Read/ReadVariableOp3mixture_layer_9/dense_59/kernel/Read/ReadVariableOp1mixture_layer_9/dense_59/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp%dense_54/kernel/m/Read/ReadVariableOp#dense_54/bias/m/Read/ReadVariableOp%dense_55/kernel/m/Read/ReadVariableOp#dense_55/bias/m/Read/ReadVariableOp%dense_56/kernel/m/Read/ReadVariableOp#dense_56/bias/m/Read/ReadVariableOp%dense_57/kernel/m/Read/ReadVariableOp#dense_57/bias/m/Read/ReadVariableOp%dense_58/kernel/m/Read/ReadVariableOp#dense_58/bias/m/Read/ReadVariableOp5mixture_layer_9/dense_59/kernel/m/Read/ReadVariableOp3mixture_layer_9/dense_59/bias/m/Read/ReadVariableOp%dense_54/kernel/v/Read/ReadVariableOp#dense_54/bias/v/Read/ReadVariableOp%dense_55/kernel/v/Read/ReadVariableOp#dense_55/bias/v/Read/ReadVariableOp%dense_56/kernel/v/Read/ReadVariableOp#dense_56/bias/v/Read/ReadVariableOp%dense_57/kernel/v/Read/ReadVariableOp#dense_57/bias/v/Read/ReadVariableOp%dense_58/kernel/v/Read/ReadVariableOp#dense_58/bias/v/Read/ReadVariableOp5mixture_layer_9/dense_59/kernel/v/Read/ReadVariableOp3mixture_layer_9/dense_59/bias/v/Read/ReadVariableOpConst_1*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_31370
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_54/kerneldense_54/biasdense_55/kerneldense_55/biasdense_56/kerneldense_56/biasdense_57/kerneldense_57/biasdense_58/kerneldense_58/biasmixture_layer_9/dense_59/kernelmixture_layer_9/dense_59/biastotalcountdense_54/kernel/mdense_54/bias/mdense_55/kernel/mdense_55/bias/mdense_56/kernel/mdense_56/bias/mdense_57/kernel/mdense_57/bias/mdense_58/kernel/mdense_58/bias/m!mixture_layer_9/dense_59/kernel/mmixture_layer_9/dense_59/bias/mdense_54/kernel/vdense_54/bias/vdense_55/kernel/vdense_55/bias/vdense_56/kernel/vdense_56/bias/vdense_57/kernel/vdense_57/bias/vdense_58/kernel/vdense_58/bias/v!mixture_layer_9/dense_59/kernel/vmixture_layer_9/dense_59/bias/v*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_31494??
?c
?
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_31088

inputs9
'dense_59_matmul_readvariableop_resource:di6
(dense_59_biasadd_readvariableop_resource:i	
mul_x
identity??dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMulinputs&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2
dense_59/BiasAddo
ConstConst*
_output_shapes
:*
dtype0	*-
value$B"	"              K       2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitVdense_59/BiasAdd:output:0Const:output:0split/split_dim:output:0*
T0*M
_output_shapes;
9:?????????:?????????:?????????K*
	num_split2
split_
SoftmaxSoftmaxsplit:output:0*
T0*'
_output_shapes
:?????????2	
SoftmaxW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
Const_1j
addAddV2Softmax:softmax:0Const_1:output:0*
T0*'
_output_shapes
:?????????2
addh
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0split:output:1*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2	
split_1?
stackPacksplit_1:output:0split_1:output:1split_1:output:2split_1:output:3split_1:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
stackh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0split:output:2*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2	
split_2?
stack_1Packsplit_2:output:0split_2:output:1split_2:output:2split_2:output:3split_2:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2	
stack_1?
#fill_triangular/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#fill_triangular/strided_slice/stack?
%fill_triangular/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%fill_triangular/strided_slice/stack_1?
%fill_triangular/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%fill_triangular/strided_slice/stack_2?
fill_triangular/strided_sliceStridedSlicestack_1:output:0,fill_triangular/strided_slice/stack:output:0.fill_triangular/strided_slice/stack_1:output:0.fill_triangular/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*
ellipsis_mask*
end_mask2
fill_triangular/strided_slice?
fill_triangular/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2 
fill_triangular/ReverseV2/axis?
fill_triangular/ReverseV2	ReverseV2stack_1:output:0'fill_triangular/ReverseV2/axis:output:0*
T0*+
_output_shapes
:?????????2
fill_triangular/ReverseV2n
fill_triangular/ShapeShapestack_1:output:0*
T0*
_output_shapes
:2
fill_triangular/Shape?
%fill_triangular/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%fill_triangular/strided_slice_1/stack?
'fill_triangular/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2)
'fill_triangular/strided_slice_1/stack_1?
'fill_triangular/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'fill_triangular/strided_slice_1/stack_2?
fill_triangular/strided_slice_1StridedSlicefill_triangular/Shape:output:0.fill_triangular/strided_slice_1/stack:output:00fill_triangular/strided_slice_1/stack_1:output:00fill_triangular/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
fill_triangular/strided_slice_1?
fill_triangular/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
fill_triangular/concat/values_1|
fill_triangular/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
fill_triangular/concat/axis?
fill_triangular/concatConcatV2(fill_triangular/strided_slice_1:output:0(fill_triangular/concat/values_1:output:0$fill_triangular/concat/axis:output:0*
N*
T0*
_output_shapes
:2
fill_triangular/concat?
fill_triangular/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fill_triangular/concat_1/axis?
fill_triangular/concat_1ConcatV2&fill_triangular/strided_slice:output:0"fill_triangular/ReverseV2:output:0&fill_triangular/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:?????????2
fill_triangular/concat_1?
fill_triangular/ReshapeReshape!fill_triangular/concat_1:output:0fill_triangular/concat:output:0*
T0*/
_output_shapes
:?????????2
fill_triangular/Reshape?
(fill_triangular/MatrixBandPart/num_lowerConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(fill_triangular/MatrixBandPart/num_lower?
(fill_triangular/MatrixBandPart/num_upperConst*
_output_shapes
: *
dtype0*
value	B : 2*
(fill_triangular/MatrixBandPart/num_upper?
fill_triangular/MatrixBandPartMatrixBandPart fill_triangular/Reshape:output:01fill_triangular/MatrixBandPart/num_lower:output:01fill_triangular/MatrixBandPart/num_upper:output:0*
T0*
Tindex0*/
_output_shapes
:?????????2 
fill_triangular/MatrixBandParti
onesConst*"
_output_shapes
:*
dtype0*!
valueB*  ??2
onesR
diag/kConst*
_output_shapes
: *
dtype0*
value	B : 2
diag/ki
diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
diag/num_rowsi
diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
diag/num_colsm
diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
diag/padding_value?
diagMatrixDiagV3ones:output:0diag/k:output:0diag/num_rows:output:0diag/num_cols:output:0diag/padding_value:output:0*
T0*&
_output_shapes
:2
diagy
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             2
transpose/perm?
	transpose	Transpose%fill_triangular/MatrixBandPart:band:0transpose/perm:output:0*
T0*/
_output_shapes
:?????????2
	transpose?
einsum/EinsumEinsumtranspose:y:0%fill_triangular/MatrixBandPart:band:0*
N*
T0*/
_output_shapes
:?????????*
equationabij,abjk->abik2
einsum/EinsumX
mulMulmul_xdiag:output:0*
T0*&
_output_shapes
:2
mulr
add_1AddV2einsum/Einsum:output:0mul:z:0*
T0*/
_output_shapes
:?????????2
add_1e
CholeskyCholesky	add_1:z:0*
T0*/
_output_shapes
:?????????2

Choleskyo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapep
ReshapeReshapeadd:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshapes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_1/shape}
	Reshape_1Reshapestack:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????}   2
Reshape_2/shape?
	Reshape_2ReshapeCholesky:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????}2
	Reshape_2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatenate/concat?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentityconcatenate/concat:output:0 ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????d: : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
C__inference_dense_58_layer_call_and_return_conditional_losses_29553

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
??
?

>__inference_MDN_layer_call_and_return_conditional_losses_30125
dense_54_input 
dense_54_30020:d
dense_54_30022:d 
dense_55_30025:dd
dense_55_30027:d 
dense_56_30030:dd
dense_56_30032:d 
dense_57_30035:dd
dense_57_30037:d 
dense_58_30040:dd
dense_58_30042:d'
mixture_layer_9_30045:di#
mixture_layer_9_30047:i
mixture_layer_9_30049
identity?? dense_54/StatefulPartitionedCall?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp? dense_55/StatefulPartitionedCall?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?'mixture_layer_9/StatefulPartitionedCall??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
 dense_54/StatefulPartitionedCallStatefulPartitionedCalldense_54_inputdense_54_30020dense_54_30022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_54_layer_call_and_return_conditional_losses_294372"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_30025dense_55_30027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_55_layer_call_and_return_conditional_losses_294662"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_30030dense_56_30032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_294952"
 dense_56/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_30035dense_57_30037*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_295242"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_30040dense_58_30042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_295532"
 dense_58/StatefulPartitionedCall?
'mixture_layer_9/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0mixture_layer_9_30045mixture_layer_9_30047mixture_layer_9_30049*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_296442)
'mixture_layer_9/StatefulPartitionedCall?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_30020*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_30022*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_30025*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_30027*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_30030*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_30032*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_30035*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_30037*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_30040*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_30042*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_30045*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_30047*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentity0mixture_layer_9/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp(^mixture_layer_9/StatefulPartitionedCall@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2R
'mixture_layer_9/StatefulPartitionedCall'mixture_layer_9/StatefulPartitionedCall2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_54_input:

_output_shapes
: 
?R
?
__inference__traced_save_31370
file_prefix.
*savev2_dense_54_kernel_read_readvariableop,
(savev2_dense_54_bias_read_readvariableop.
*savev2_dense_55_kernel_read_readvariableop,
(savev2_dense_55_bias_read_readvariableop.
*savev2_dense_56_kernel_read_readvariableop,
(savev2_dense_56_bias_read_readvariableop.
*savev2_dense_57_kernel_read_readvariableop,
(savev2_dense_57_bias_read_readvariableop.
*savev2_dense_58_kernel_read_readvariableop,
(savev2_dense_58_bias_read_readvariableop>
:savev2_mixture_layer_9_dense_59_kernel_read_readvariableop<
8savev2_mixture_layer_9_dense_59_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop0
,savev2_dense_54_kernel_m_read_readvariableop.
*savev2_dense_54_bias_m_read_readvariableop0
,savev2_dense_55_kernel_m_read_readvariableop.
*savev2_dense_55_bias_m_read_readvariableop0
,savev2_dense_56_kernel_m_read_readvariableop.
*savev2_dense_56_bias_m_read_readvariableop0
,savev2_dense_57_kernel_m_read_readvariableop.
*savev2_dense_57_bias_m_read_readvariableop0
,savev2_dense_58_kernel_m_read_readvariableop.
*savev2_dense_58_bias_m_read_readvariableop@
<savev2_mixture_layer_9_dense_59_kernel_m_read_readvariableop>
:savev2_mixture_layer_9_dense_59_bias_m_read_readvariableop0
,savev2_dense_54_kernel_v_read_readvariableop.
*savev2_dense_54_bias_v_read_readvariableop0
,savev2_dense_55_kernel_v_read_readvariableop.
*savev2_dense_55_bias_v_read_readvariableop0
,savev2_dense_56_kernel_v_read_readvariableop.
*savev2_dense_56_bias_v_read_readvariableop0
,savev2_dense_57_kernel_v_read_readvariableop.
*savev2_dense_57_bias_v_read_readvariableop0
,savev2_dense_58_kernel_v_read_readvariableop.
*savev2_dense_58_bias_v_read_readvariableop@
<savev2_mixture_layer_9_dense_59_kernel_v_read_readvariableop>
:savev2_mixture_layer_9_dense_59_bias_v_read_readvariableop
savev2_const_1

identity_1??MergeV2Checkpoints?
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
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
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_54_kernel_read_readvariableop(savev2_dense_54_bias_read_readvariableop*savev2_dense_55_kernel_read_readvariableop(savev2_dense_55_bias_read_readvariableop*savev2_dense_56_kernel_read_readvariableop(savev2_dense_56_bias_read_readvariableop*savev2_dense_57_kernel_read_readvariableop(savev2_dense_57_bias_read_readvariableop*savev2_dense_58_kernel_read_readvariableop(savev2_dense_58_bias_read_readvariableop:savev2_mixture_layer_9_dense_59_kernel_read_readvariableop8savev2_mixture_layer_9_dense_59_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop,savev2_dense_54_kernel_m_read_readvariableop*savev2_dense_54_bias_m_read_readvariableop,savev2_dense_55_kernel_m_read_readvariableop*savev2_dense_55_bias_m_read_readvariableop,savev2_dense_56_kernel_m_read_readvariableop*savev2_dense_56_bias_m_read_readvariableop,savev2_dense_57_kernel_m_read_readvariableop*savev2_dense_57_bias_m_read_readvariableop,savev2_dense_58_kernel_m_read_readvariableop*savev2_dense_58_bias_m_read_readvariableop<savev2_mixture_layer_9_dense_59_kernel_m_read_readvariableop:savev2_mixture_layer_9_dense_59_bias_m_read_readvariableop,savev2_dense_54_kernel_v_read_readvariableop*savev2_dense_54_bias_v_read_readvariableop,savev2_dense_55_kernel_v_read_readvariableop*savev2_dense_55_bias_v_read_readvariableop,savev2_dense_56_kernel_v_read_readvariableop*savev2_dense_56_bias_v_read_readvariableop,savev2_dense_57_kernel_v_read_readvariableop*savev2_dense_57_bias_v_read_readvariableop,savev2_dense_58_kernel_v_read_readvariableop*savev2_dense_58_bias_v_read_readvariableop<savev2_mixture_layer_9_dense_59_kernel_v_read_readvariableop:savev2_mixture_layer_9_dense_59_bias_v_read_readvariableopsavev2_const_1"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :d:d:dd:d:dd:d:dd:d:dd:d:di:i: : :d:d:dd:d:dd:d:dd:d:dd:d:di:i:d:d:dd:d:dd:d:dd:d:dd:d:di:i: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$	 

_output_shapes

:dd: 


_output_shapes
:d:$ 

_output_shapes

:di: 

_output_shapes
:i:

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:di: 

_output_shapes
:i:$ 

_output_shapes

:d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:$ 

_output_shapes

:dd:  

_output_shapes
:d:$! 

_output_shapes

:dd: "

_output_shapes
:d:$# 

_output_shapes

:dd: $

_output_shapes
:d:$% 

_output_shapes

:di: &

_output_shapes
:i:'

_output_shapes
: 
Ō
?
>__inference_MDN_layer_call_and_return_conditional_losses_30580

inputs9
'dense_54_matmul_readvariableop_resource:d6
(dense_54_biasadd_readvariableop_resource:d9
'dense_55_matmul_readvariableop_resource:dd6
(dense_55_biasadd_readvariableop_resource:d9
'dense_56_matmul_readvariableop_resource:dd6
(dense_56_biasadd_readvariableop_resource:d9
'dense_57_matmul_readvariableop_resource:dd6
(dense_57_biasadd_readvariableop_resource:d9
'dense_58_matmul_readvariableop_resource:dd6
(dense_58_biasadd_readvariableop_resource:dI
7mixture_layer_9_dense_59_matmul_readvariableop_resource:diF
8mixture_layer_9_dense_59_biasadd_readvariableop_resource:i
mixture_layer_9_mul_x
identity??dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp?.mixture_layer_9/dense_59/MatMul/ReadVariableOp??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_54/MatMul/ReadVariableOp?
dense_54/MatMulMatMulinputs&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_54/MatMul?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_54/BiasAdd/ReadVariableOp?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_54/BiasAdds
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_54/Relu?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_55/MatMul/ReadVariableOp?
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_55/MatMul?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_55/BiasAdd/ReadVariableOp?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_55/BiasAdds
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_55/Relu?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/BiasAdds
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_56/Relu?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMuldense_56/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/BiasAdds
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_57/Relu?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_58/MatMul/ReadVariableOp?
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/MatMul?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_58/BiasAdd/ReadVariableOp?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/BiasAdds
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_58/Relu?
.mixture_layer_9/dense_59/MatMul/ReadVariableOpReadVariableOp7mixture_layer_9_dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype020
.mixture_layer_9/dense_59/MatMul/ReadVariableOp?
mixture_layer_9/dense_59/MatMulMatMuldense_58/Relu:activations:06mixture_layer_9/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2!
mixture_layer_9/dense_59/MatMul?
/mixture_layer_9/dense_59/BiasAdd/ReadVariableOpReadVariableOp8mixture_layer_9_dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype021
/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp?
 mixture_layer_9/dense_59/BiasAddBiasAdd)mixture_layer_9/dense_59/MatMul:product:07mixture_layer_9/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2"
 mixture_layer_9/dense_59/BiasAdd?
mixture_layer_9/ConstConst*
_output_shapes
:*
dtype0	*-
value$B"	"              K       2
mixture_layer_9/Const?
mixture_layer_9/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
mixture_layer_9/split/split_dim?
mixture_layer_9/splitSplitV)mixture_layer_9/dense_59/BiasAdd:output:0mixture_layer_9/Const:output:0(mixture_layer_9/split/split_dim:output:0*
T0*M
_output_shapes;
9:?????????:?????????:?????????K*
	num_split2
mixture_layer_9/split?
mixture_layer_9/SoftmaxSoftmaxmixture_layer_9/split:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/Softmaxw
mixture_layer_9/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *_p?02
mixture_layer_9/Const_1?
mixture_layer_9/addAddV2!mixture_layer_9/Softmax:softmax:0 mixture_layer_9/Const_1:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/add?
!mixture_layer_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!mixture_layer_9/split_1/split_dim?
mixture_layer_9/split_1Split*mixture_layer_9/split_1/split_dim:output:0mixture_layer_9/split:output:1*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2
mixture_layer_9/split_1?
mixture_layer_9/stackPack mixture_layer_9/split_1:output:0 mixture_layer_9/split_1:output:1 mixture_layer_9/split_1:output:2 mixture_layer_9/split_1:output:3 mixture_layer_9/split_1:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
mixture_layer_9/stack?
!mixture_layer_9/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!mixture_layer_9/split_2/split_dim?
mixture_layer_9/split_2Split*mixture_layer_9/split_2/split_dim:output:0mixture_layer_9/split:output:2*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2
mixture_layer_9/split_2?
mixture_layer_9/stack_1Pack mixture_layer_9/split_2:output:0 mixture_layer_9/split_2:output:1 mixture_layer_9/split_2:output:2 mixture_layer_9/split_2:output:3 mixture_layer_9/split_2:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
mixture_layer_9/stack_1?
3mixture_layer_9/fill_triangular/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       25
3mixture_layer_9/fill_triangular/strided_slice/stack?
5mixture_layer_9/fill_triangular/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5mixture_layer_9/fill_triangular/strided_slice/stack_1?
5mixture_layer_9/fill_triangular/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5mixture_layer_9/fill_triangular/strided_slice/stack_2?
-mixture_layer_9/fill_triangular/strided_sliceStridedSlice mixture_layer_9/stack_1:output:0<mixture_layer_9/fill_triangular/strided_slice/stack:output:0>mixture_layer_9/fill_triangular/strided_slice/stack_1:output:0>mixture_layer_9/fill_triangular/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*
ellipsis_mask*
end_mask2/
-mixture_layer_9/fill_triangular/strided_slice?
.mixture_layer_9/fill_triangular/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:20
.mixture_layer_9/fill_triangular/ReverseV2/axis?
)mixture_layer_9/fill_triangular/ReverseV2	ReverseV2 mixture_layer_9/stack_1:output:07mixture_layer_9/fill_triangular/ReverseV2/axis:output:0*
T0*+
_output_shapes
:?????????2+
)mixture_layer_9/fill_triangular/ReverseV2?
%mixture_layer_9/fill_triangular/ShapeShape mixture_layer_9/stack_1:output:0*
T0*
_output_shapes
:2'
%mixture_layer_9/fill_triangular/Shape?
5mixture_layer_9/fill_triangular/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5mixture_layer_9/fill_triangular/strided_slice_1/stack?
7mixture_layer_9/fill_triangular/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????29
7mixture_layer_9/fill_triangular/strided_slice_1/stack_1?
7mixture_layer_9/fill_triangular/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7mixture_layer_9/fill_triangular/strided_slice_1/stack_2?
/mixture_layer_9/fill_triangular/strided_slice_1StridedSlice.mixture_layer_9/fill_triangular/Shape:output:0>mixture_layer_9/fill_triangular/strided_slice_1/stack:output:0@mixture_layer_9/fill_triangular/strided_slice_1/stack_1:output:0@mixture_layer_9/fill_triangular/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask21
/mixture_layer_9/fill_triangular/strided_slice_1?
/mixture_layer_9/fill_triangular/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      21
/mixture_layer_9/fill_triangular/concat/values_1?
+mixture_layer_9/fill_triangular/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+mixture_layer_9/fill_triangular/concat/axis?
&mixture_layer_9/fill_triangular/concatConcatV28mixture_layer_9/fill_triangular/strided_slice_1:output:08mixture_layer_9/fill_triangular/concat/values_1:output:04mixture_layer_9/fill_triangular/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&mixture_layer_9/fill_triangular/concat?
-mixture_layer_9/fill_triangular/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-mixture_layer_9/fill_triangular/concat_1/axis?
(mixture_layer_9/fill_triangular/concat_1ConcatV26mixture_layer_9/fill_triangular/strided_slice:output:02mixture_layer_9/fill_triangular/ReverseV2:output:06mixture_layer_9/fill_triangular/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:?????????2*
(mixture_layer_9/fill_triangular/concat_1?
'mixture_layer_9/fill_triangular/ReshapeReshape1mixture_layer_9/fill_triangular/concat_1:output:0/mixture_layer_9/fill_triangular/concat:output:0*
T0*/
_output_shapes
:?????????2)
'mixture_layer_9/fill_triangular/Reshape?
8mixture_layer_9/fill_triangular/MatrixBandPart/num_lowerConst*
_output_shapes
: *
dtype0*
valueB :
?????????2:
8mixture_layer_9/fill_triangular/MatrixBandPart/num_lower?
8mixture_layer_9/fill_triangular/MatrixBandPart/num_upperConst*
_output_shapes
: *
dtype0*
value	B : 2:
8mixture_layer_9/fill_triangular/MatrixBandPart/num_upper?
.mixture_layer_9/fill_triangular/MatrixBandPartMatrixBandPart0mixture_layer_9/fill_triangular/Reshape:output:0Amixture_layer_9/fill_triangular/MatrixBandPart/num_lower:output:0Amixture_layer_9/fill_triangular/MatrixBandPart/num_upper:output:0*
T0*
Tindex0*/
_output_shapes
:?????????20
.mixture_layer_9/fill_triangular/MatrixBandPart?
mixture_layer_9/onesConst*"
_output_shapes
:*
dtype0*!
valueB*  ??2
mixture_layer_9/onesr
mixture_layer_9/diag/kConst*
_output_shapes
: *
dtype0*
value	B : 2
mixture_layer_9/diag/k?
mixture_layer_9/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
mixture_layer_9/diag/num_rows?
mixture_layer_9/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
mixture_layer_9/diag/num_cols?
"mixture_layer_9/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"mixture_layer_9/diag/padding_value?
mixture_layer_9/diagMatrixDiagV3mixture_layer_9/ones:output:0mixture_layer_9/diag/k:output:0&mixture_layer_9/diag/num_rows:output:0&mixture_layer_9/diag/num_cols:output:0+mixture_layer_9/diag/padding_value:output:0*
T0*&
_output_shapes
:2
mixture_layer_9/diag?
mixture_layer_9/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             2 
mixture_layer_9/transpose/perm?
mixture_layer_9/transpose	Transpose5mixture_layer_9/fill_triangular/MatrixBandPart:band:0'mixture_layer_9/transpose/perm:output:0*
T0*/
_output_shapes
:?????????2
mixture_layer_9/transpose?
mixture_layer_9/einsum/EinsumEinsummixture_layer_9/transpose:y:05mixture_layer_9/fill_triangular/MatrixBandPart:band:0*
N*
T0*/
_output_shapes
:?????????*
equationabij,abjk->abik2
mixture_layer_9/einsum/Einsum?
mixture_layer_9/mulMulmixture_layer_9_mul_xmixture_layer_9/diag:output:0*
T0*&
_output_shapes
:2
mixture_layer_9/mul?
mixture_layer_9/add_1AddV2&mixture_layer_9/einsum/Einsum:output:0mixture_layer_9/mul:z:0*
T0*/
_output_shapes
:?????????2
mixture_layer_9/add_1?
mixture_layer_9/CholeskyCholeskymixture_layer_9/add_1:z:0*
T0*/
_output_shapes
:?????????2
mixture_layer_9/Cholesky?
mixture_layer_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
mixture_layer_9/Reshape/shape?
mixture_layer_9/ReshapeReshapemixture_layer_9/add:z:0&mixture_layer_9/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/Reshape?
mixture_layer_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2!
mixture_layer_9/Reshape_1/shape?
mixture_layer_9/Reshape_1Reshapemixture_layer_9/stack:output:0(mixture_layer_9/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/Reshape_1?
mixture_layer_9/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????}   2!
mixture_layer_9/Reshape_2/shape?
mixture_layer_9/Reshape_2Reshape!mixture_layer_9/Cholesky:output:0(mixture_layer_9/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????}2
mixture_layer_9/Reshape_2?
'mixture_layer_9/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2)
'mixture_layer_9/concatenate/concat/axis?
"mixture_layer_9/concatenate/concatConcatV2 mixture_layer_9/Reshape:output:0"mixture_layer_9/Reshape_1:output:0"mixture_layer_9/Reshape_2:output:00mixture_layer_9/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2$
"mixture_layer_9/concatenate/concat?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7mixture_layer_9_dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp8mixture_layer_9_dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?	
IdentityIdentity+mixture_layer_9/concatenate/concat:output:0 ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp0^mixture_layer_9/dense_59/BiasAdd/ReadVariableOp/^mixture_layer_9/dense_59/MatMul/ReadVariableOp@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2b
/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp2`
.mixture_layer_9/dense_59/MatMul/ReadVariableOp.mixture_layer_9/dense_59/MatMul/ReadVariableOp2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference_loss_fn_0_31099L
:dense_54_kernel_regularizer_square_readvariableop_resource:d
identity??1dense_54/kernel/Regularizer/Square/ReadVariableOp?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_54_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
IdentityIdentity#dense_54/kernel/Regularizer/mul:z:02^dense_54/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp
?

?
#__inference_signature_wrapper_30338
dense_54_input
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:di

unknown_10:i

unknown_11
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_294072
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_54_input:

_output_shapes
: 
?
?
(__inference_dense_57_layer_call_fn_30913

inputs
unknown:dd
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_295242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
C__inference_dense_54_layer_call_and_return_conditional_losses_30804

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?c
?
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_29644

inputs9
'dense_59_matmul_readvariableop_resource:di6
(dense_59_biasadd_readvariableop_resource:i	
mul_x
identity??dense_59/BiasAdd/ReadVariableOp?dense_59/MatMul/ReadVariableOp??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
dense_59/MatMul/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype02 
dense_59/MatMul/ReadVariableOp?
dense_59/MatMulMatMulinputs&dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2
dense_59/MatMul?
dense_59/BiasAdd/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02!
dense_59/BiasAdd/ReadVariableOp?
dense_59/BiasAddBiasAdddense_59/MatMul:product:0'dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2
dense_59/BiasAddo
ConstConst*
_output_shapes
:*
dtype0	*-
value$B"	"              K       2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitVdense_59/BiasAdd:output:0Const:output:0split/split_dim:output:0*
T0*M
_output_shapes;
9:?????????:?????????:?????????K*
	num_split2
split_
SoftmaxSoftmaxsplit:output:0*
T0*'
_output_shapes
:?????????2	
SoftmaxW
Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *_p?02	
Const_1j
addAddV2Softmax:softmax:0Const_1:output:0*
T0*'
_output_shapes
:?????????2
addh
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0split:output:1*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2	
split_1?
stackPacksplit_1:output:0split_1:output:1split_1:output:2split_1:output:3split_1:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
stackh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0split:output:2*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2	
split_2?
stack_1Packsplit_2:output:0split_2:output:1split_2:output:2split_2:output:3split_2:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2	
stack_1?
#fill_triangular/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       2%
#fill_triangular/strided_slice/stack?
%fill_triangular/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2'
%fill_triangular/strided_slice/stack_1?
%fill_triangular/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2'
%fill_triangular/strided_slice/stack_2?
fill_triangular/strided_sliceStridedSlicestack_1:output:0,fill_triangular/strided_slice/stack:output:0.fill_triangular/strided_slice/stack_1:output:0.fill_triangular/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*
ellipsis_mask*
end_mask2
fill_triangular/strided_slice?
fill_triangular/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:2 
fill_triangular/ReverseV2/axis?
fill_triangular/ReverseV2	ReverseV2stack_1:output:0'fill_triangular/ReverseV2/axis:output:0*
T0*+
_output_shapes
:?????????2
fill_triangular/ReverseV2n
fill_triangular/ShapeShapestack_1:output:0*
T0*
_output_shapes
:2
fill_triangular/Shape?
%fill_triangular/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%fill_triangular/strided_slice_1/stack?
'fill_triangular/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2)
'fill_triangular/strided_slice_1/stack_1?
'fill_triangular/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'fill_triangular/strided_slice_1/stack_2?
fill_triangular/strided_slice_1StridedSlicefill_triangular/Shape:output:0.fill_triangular/strided_slice_1/stack:output:00fill_triangular/strided_slice_1/stack_1:output:00fill_triangular/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2!
fill_triangular/strided_slice_1?
fill_triangular/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      2!
fill_triangular/concat/values_1|
fill_triangular/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
fill_triangular/concat/axis?
fill_triangular/concatConcatV2(fill_triangular/strided_slice_1:output:0(fill_triangular/concat/values_1:output:0$fill_triangular/concat/axis:output:0*
N*
T0*
_output_shapes
:2
fill_triangular/concat?
fill_triangular/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
fill_triangular/concat_1/axis?
fill_triangular/concat_1ConcatV2&fill_triangular/strided_slice:output:0"fill_triangular/ReverseV2:output:0&fill_triangular/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:?????????2
fill_triangular/concat_1?
fill_triangular/ReshapeReshape!fill_triangular/concat_1:output:0fill_triangular/concat:output:0*
T0*/
_output_shapes
:?????????2
fill_triangular/Reshape?
(fill_triangular/MatrixBandPart/num_lowerConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(fill_triangular/MatrixBandPart/num_lower?
(fill_triangular/MatrixBandPart/num_upperConst*
_output_shapes
: *
dtype0*
value	B : 2*
(fill_triangular/MatrixBandPart/num_upper?
fill_triangular/MatrixBandPartMatrixBandPart fill_triangular/Reshape:output:01fill_triangular/MatrixBandPart/num_lower:output:01fill_triangular/MatrixBandPart/num_upper:output:0*
T0*
Tindex0*/
_output_shapes
:?????????2 
fill_triangular/MatrixBandParti
onesConst*"
_output_shapes
:*
dtype0*!
valueB*  ??2
onesR
diag/kConst*
_output_shapes
: *
dtype0*
value	B : 2
diag/ki
diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
diag/num_rowsi
diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
diag/num_colsm
diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2
diag/padding_value?
diagMatrixDiagV3ones:output:0diag/k:output:0diag/num_rows:output:0diag/num_cols:output:0diag/padding_value:output:0*
T0*&
_output_shapes
:2
diagy
transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             2
transpose/perm?
	transpose	Transpose%fill_triangular/MatrixBandPart:band:0transpose/perm:output:0*
T0*/
_output_shapes
:?????????2
	transpose?
einsum/EinsumEinsumtranspose:y:0%fill_triangular/MatrixBandPart:band:0*
N*
T0*/
_output_shapes
:?????????*
equationabij,abjk->abik2
einsum/EinsumX
mulMulmul_xdiag:output:0*
T0*&
_output_shapes
:2
mulr
add_1AddV2einsum/Einsum:output:0mul:z:0*
T0*/
_output_shapes
:?????????2
add_1e
CholeskyCholesky	add_1:z:0*
T0*/
_output_shapes
:?????????2

Choleskyo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shapep
ReshapeReshapeadd:z:0Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2	
Reshapes
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape_1/shape}
	Reshape_1Reshapestack:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
	Reshape_1s
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????}   2
Reshape_2/shape?
	Reshape_2ReshapeCholesky:output:0Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????}2
	Reshape_2t
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatenate/concat?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentityconcatenate/concat:output:0 ^dense_59/BiasAdd/ReadVariableOp^dense_59/MatMul/ReadVariableOp@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????d: : : 2B
dense_59/BiasAdd/ReadVariableOpdense_59/BiasAdd/ReadVariableOp2@
dense_59/MatMul/ReadVariableOpdense_59/MatMul/ReadVariableOp2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
C__inference_dense_56_layer_call_and_return_conditional_losses_30892

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_3_31132F
8dense_55_bias_regularizer_square_readvariableop_resource:d
identity??/dense_55/bias/Regularizer/Square/ReadVariableOp?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_55_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
IdentityIdentity!dense_55/bias/Regularizer/mul:z:00^dense_55/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp
?
?
C__inference_dense_56_layer_call_and_return_conditional_losses_29495

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
ț
?

>__inference_MDN_layer_call_and_return_conditional_losses_29957

inputs 
dense_54_29852:d
dense_54_29854:d 
dense_55_29857:dd
dense_55_29859:d 
dense_56_29862:dd
dense_56_29864:d 
dense_57_29867:dd
dense_57_29869:d 
dense_58_29872:dd
dense_58_29874:d'
mixture_layer_9_29877:di#
mixture_layer_9_29879:i
mixture_layer_9_29881
identity?? dense_54/StatefulPartitionedCall?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp? dense_55/StatefulPartitionedCall?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?'mixture_layer_9/StatefulPartitionedCall??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
 dense_54/StatefulPartitionedCallStatefulPartitionedCallinputsdense_54_29852dense_54_29854*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_54_layer_call_and_return_conditional_losses_294372"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_29857dense_55_29859*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_55_layer_call_and_return_conditional_losses_294662"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_29862dense_56_29864*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_294952"
 dense_56/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_29867dense_57_29869*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_295242"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_29872dense_58_29874*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_295532"
 dense_58/StatefulPartitionedCall?
'mixture_layer_9/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0mixture_layer_9_29877mixture_layer_9_29879mixture_layer_9_29881*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_296442)
'mixture_layer_9/StatefulPartitionedCall?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_29852*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_29854*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_29857*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_29859*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_29862*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_29864*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_29867*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_29869*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_29872*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_29874*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_29877*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_29879*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentity0mixture_layer_9/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp(^mixture_layer_9/StatefulPartitionedCall@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2R
'mixture_layer_9/StatefulPartitionedCall'mixture_layer_9/StatefulPartitionedCall2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
(__inference_dense_56_layer_call_fn_30869

inputs
unknown:dd
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_294952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
C__inference_dense_57_layer_call_and_return_conditional_losses_29524

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
ț
?

>__inference_MDN_layer_call_and_return_conditional_losses_29725

inputs 
dense_54_29438:d
dense_54_29440:d 
dense_55_29467:dd
dense_55_29469:d 
dense_56_29496:dd
dense_56_29498:d 
dense_57_29525:dd
dense_57_29527:d 
dense_58_29554:dd
dense_58_29556:d'
mixture_layer_9_29645:di#
mixture_layer_9_29647:i
mixture_layer_9_29649
identity?? dense_54/StatefulPartitionedCall?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp? dense_55/StatefulPartitionedCall?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?'mixture_layer_9/StatefulPartitionedCall??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
 dense_54/StatefulPartitionedCallStatefulPartitionedCallinputsdense_54_29438dense_54_29440*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_54_layer_call_and_return_conditional_losses_294372"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_29467dense_55_29469*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_55_layer_call_and_return_conditional_losses_294662"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_29496dense_56_29498*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_294952"
 dense_56/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_29525dense_57_29527*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_295242"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_29554dense_58_29556*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_295532"
 dense_58/StatefulPartitionedCall?
'mixture_layer_9/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0mixture_layer_9_29645mixture_layer_9_29647mixture_layer_9_29649*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_296442)
'mixture_layer_9/StatefulPartitionedCall?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_29438*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_29440*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_29467*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_29469*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_29496*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_29498*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_29525*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_29527*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_29554*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_29556*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_29645*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_29647*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentity0mixture_layer_9/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp(^mixture_layer_9/StatefulPartitionedCall@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2R
'mixture_layer_9/StatefulPartitionedCall'mixture_layer_9/StatefulPartitionedCall2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
#__inference_MDN_layer_call_fn_30017
dense_54_input
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:di

unknown_10:i

unknown_11
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_MDN_layer_call_and_return_conditional_losses_299572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_54_input:

_output_shapes
: 
?
?
(__inference_dense_55_layer_call_fn_30825

inputs
unknown:dd
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_55_layer_call_and_return_conditional_losses_294662
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
C__inference_dense_55_layer_call_and_return_conditional_losses_29466

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_9_31198F
8dense_58_bias_regularizer_square_readvariableop_resource:d
identity??/dense_58/bias/Regularizer/Square/ReadVariableOp?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_58_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
IdentityIdentity!dense_58/bias/Regularizer/mul:z:00^dense_58/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp
?
?
C__inference_dense_58_layer_call_and_return_conditional_losses_30980

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_4_31143L
:dense_56_kernel_regularizer_square_readvariableop_resource:dd
identity??1dense_56/kernel/Regularizer/Square/ReadVariableOp?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_56_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
IdentityIdentity#dense_56/kernel/Regularizer/mul:z:02^dense_56/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp
?

?
#__inference_MDN_layer_call_fn_30369

inputs
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:di

unknown_10:i

unknown_11
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_MDN_layer_call_and_return_conditional_losses_297252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?

?
#__inference_MDN_layer_call_fn_30400

inputs
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:di

unknown_10:i

unknown_11
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_MDN_layer_call_and_return_conditional_losses_299572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
__inference_loss_fn_8_31187L
:dense_58_kernel_regularizer_square_readvariableop_resource:dd
identity??1dense_58/kernel/Regularizer/Square/ReadVariableOp?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_58_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
IdentityIdentity#dense_58/kernel/Regularizer/mul:z:02^dense_58/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp
??
?

>__inference_MDN_layer_call_and_return_conditional_losses_30233
dense_54_input 
dense_54_30128:d
dense_54_30130:d 
dense_55_30133:dd
dense_55_30135:d 
dense_56_30138:dd
dense_56_30140:d 
dense_57_30143:dd
dense_57_30145:d 
dense_58_30148:dd
dense_58_30150:d'
mixture_layer_9_30153:di#
mixture_layer_9_30155:i
mixture_layer_9_30157
identity?? dense_54/StatefulPartitionedCall?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp? dense_55/StatefulPartitionedCall?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp? dense_56/StatefulPartitionedCall?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp? dense_57/StatefulPartitionedCall?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp? dense_58/StatefulPartitionedCall?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?'mixture_layer_9/StatefulPartitionedCall??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
 dense_54/StatefulPartitionedCallStatefulPartitionedCalldense_54_inputdense_54_30128dense_54_30130*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_54_layer_call_and_return_conditional_losses_294372"
 dense_54/StatefulPartitionedCall?
 dense_55/StatefulPartitionedCallStatefulPartitionedCall)dense_54/StatefulPartitionedCall:output:0dense_55_30133dense_55_30135*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_55_layer_call_and_return_conditional_losses_294662"
 dense_55/StatefulPartitionedCall?
 dense_56/StatefulPartitionedCallStatefulPartitionedCall)dense_55/StatefulPartitionedCall:output:0dense_56_30138dense_56_30140*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_56_layer_call_and_return_conditional_losses_294952"
 dense_56/StatefulPartitionedCall?
 dense_57/StatefulPartitionedCallStatefulPartitionedCall)dense_56/StatefulPartitionedCall:output:0dense_57_30143dense_57_30145*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_57_layer_call_and_return_conditional_losses_295242"
 dense_57/StatefulPartitionedCall?
 dense_58/StatefulPartitionedCallStatefulPartitionedCall)dense_57/StatefulPartitionedCall:output:0dense_58_30148dense_58_30150*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_295532"
 dense_58/StatefulPartitionedCall?
'mixture_layer_9/StatefulPartitionedCallStatefulPartitionedCall)dense_58/StatefulPartitionedCall:output:0mixture_layer_9_30153mixture_layer_9_30155mixture_layer_9_30157*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_296442)
'mixture_layer_9/StatefulPartitionedCall?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_30128*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_54_30130*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_30133*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_55_30135*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_30138*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_56_30140*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_30143*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_57_30145*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_30148*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOpdense_58_30150*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_30153*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpmixture_layer_9_30155*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentity0mixture_layer_9/StatefulPartitionedCall:output:0!^dense_54/StatefulPartitionedCall0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp!^dense_55/StatefulPartitionedCall0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp!^dense_56/StatefulPartitionedCall0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp!^dense_57/StatefulPartitionedCall0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp!^dense_58/StatefulPartitionedCall0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp(^mixture_layer_9/StatefulPartitionedCall@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2D
 dense_54/StatefulPartitionedCall dense_54/StatefulPartitionedCall2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp2D
 dense_55/StatefulPartitionedCall dense_55/StatefulPartitionedCall2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2D
 dense_56/StatefulPartitionedCall dense_56/StatefulPartitionedCall2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2D
 dense_57/StatefulPartitionedCall dense_57/StatefulPartitionedCall2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2D
 dense_58/StatefulPartitionedCall dense_58/StatefulPartitionedCall2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2R
'mixture_layer_9/StatefulPartitionedCall'mixture_layer_9/StatefulPartitionedCall2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_54_input:

_output_shapes
: 
?
?
#__inference_MDN_layer_call_fn_29754
dense_54_input
unknown:d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:dd
	unknown_4:d
	unknown_5:dd
	unknown_6:d
	unknown_7:dd
	unknown_8:d
	unknown_9:di

unknown_10:i

unknown_11
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_54_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_MDN_layer_call_and_return_conditional_losses_297252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_54_input:

_output_shapes
: 
?
?
__inference_loss_fn_5_31154F
8dense_56_bias_regularizer_square_readvariableop_resource:d
identity??/dense_56/bias/Regularizer/Square/ReadVariableOp?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_56_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
IdentityIdentity!dense_56/bias/Regularizer/mul:z:00^dense_56/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_11_31232V
Hmixture_layer_9_dense_59_bias_regularizer_square_readvariableop_resource:i
identity???mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOpHmixture_layer_9_dense_59_bias_regularizer_square_readvariableop_resource*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?
IdentityIdentity1mixture_layer_9/dense_59/bias/Regularizer/mul:z:0@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp
?
?
(__inference_dense_54_layer_call_fn_30781

inputs
unknown:d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_54_layer_call_and_return_conditional_losses_294372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
Ō
?
>__inference_MDN_layer_call_and_return_conditional_losses_30760

inputs9
'dense_54_matmul_readvariableop_resource:d6
(dense_54_biasadd_readvariableop_resource:d9
'dense_55_matmul_readvariableop_resource:dd6
(dense_55_biasadd_readvariableop_resource:d9
'dense_56_matmul_readvariableop_resource:dd6
(dense_56_biasadd_readvariableop_resource:d9
'dense_57_matmul_readvariableop_resource:dd6
(dense_57_biasadd_readvariableop_resource:d9
'dense_58_matmul_readvariableop_resource:dd6
(dense_58_biasadd_readvariableop_resource:dI
7mixture_layer_9_dense_59_matmul_readvariableop_resource:diF
8mixture_layer_9_dense_59_biasadd_readvariableop_resource:i
mixture_layer_9_mul_x
identity??dense_54/BiasAdd/ReadVariableOp?dense_54/MatMul/ReadVariableOp?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp?dense_55/BiasAdd/ReadVariableOp?dense_55/MatMul/ReadVariableOp?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp?dense_56/BiasAdd/ReadVariableOp?dense_56/MatMul/ReadVariableOp?/dense_56/bias/Regularizer/Square/ReadVariableOp?1dense_56/kernel/Regularizer/Square/ReadVariableOp?dense_57/BiasAdd/ReadVariableOp?dense_57/MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp?dense_58/BiasAdd/ReadVariableOp?dense_58/MatMul/ReadVariableOp?/dense_58/bias/Regularizer/Square/ReadVariableOp?1dense_58/kernel/Regularizer/Square/ReadVariableOp?/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp?.mixture_layer_9/dense_59/MatMul/ReadVariableOp??mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
dense_54/MatMul/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02 
dense_54/MatMul/ReadVariableOp?
dense_54/MatMulMatMulinputs&dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_54/MatMul?
dense_54/BiasAdd/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_54/BiasAdd/ReadVariableOp?
dense_54/BiasAddBiasAdddense_54/MatMul:product:0'dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_54/BiasAdds
dense_54/ReluReludense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_54/Relu?
dense_55/MatMul/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_55/MatMul/ReadVariableOp?
dense_55/MatMulMatMuldense_54/Relu:activations:0&dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_55/MatMul?
dense_55/BiasAdd/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_55/BiasAdd/ReadVariableOp?
dense_55/BiasAddBiasAdddense_55/MatMul:product:0'dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_55/BiasAdds
dense_55/ReluReludense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_55/Relu?
dense_56/MatMul/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_56/MatMul/ReadVariableOp?
dense_56/MatMulMatMuldense_55/Relu:activations:0&dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/MatMul?
dense_56/BiasAdd/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_56/BiasAdd/ReadVariableOp?
dense_56/BiasAddBiasAdddense_56/MatMul:product:0'dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_56/BiasAdds
dense_56/ReluReludense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_56/Relu?
dense_57/MatMul/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_57/MatMul/ReadVariableOp?
dense_57/MatMulMatMuldense_56/Relu:activations:0&dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/MatMul?
dense_57/BiasAdd/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_57/BiasAdd/ReadVariableOp?
dense_57/BiasAddBiasAdddense_57/MatMul:product:0'dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_57/BiasAdds
dense_57/ReluReludense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_57/Relu?
dense_58/MatMul/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02 
dense_58/MatMul/ReadVariableOp?
dense_58/MatMulMatMuldense_57/Relu:activations:0&dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/MatMul?
dense_58/BiasAdd/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02!
dense_58/BiasAdd/ReadVariableOp?
dense_58/BiasAddBiasAdddense_58/MatMul:product:0'dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_58/BiasAdds
dense_58/ReluReludense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_58/Relu?
.mixture_layer_9/dense_59/MatMul/ReadVariableOpReadVariableOp7mixture_layer_9_dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype020
.mixture_layer_9/dense_59/MatMul/ReadVariableOp?
mixture_layer_9/dense_59/MatMulMatMuldense_58/Relu:activations:06mixture_layer_9/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2!
mixture_layer_9/dense_59/MatMul?
/mixture_layer_9/dense_59/BiasAdd/ReadVariableOpReadVariableOp8mixture_layer_9_dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype021
/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp?
 mixture_layer_9/dense_59/BiasAddBiasAdd)mixture_layer_9/dense_59/MatMul:product:07mixture_layer_9/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2"
 mixture_layer_9/dense_59/BiasAdd?
mixture_layer_9/ConstConst*
_output_shapes
:*
dtype0	*-
value$B"	"              K       2
mixture_layer_9/Const?
mixture_layer_9/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2!
mixture_layer_9/split/split_dim?
mixture_layer_9/splitSplitV)mixture_layer_9/dense_59/BiasAdd:output:0mixture_layer_9/Const:output:0(mixture_layer_9/split/split_dim:output:0*
T0*M
_output_shapes;
9:?????????:?????????:?????????K*
	num_split2
mixture_layer_9/split?
mixture_layer_9/SoftmaxSoftmaxmixture_layer_9/split:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/Softmaxw
mixture_layer_9/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *_p?02
mixture_layer_9/Const_1?
mixture_layer_9/addAddV2!mixture_layer_9/Softmax:softmax:0 mixture_layer_9/Const_1:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/add?
!mixture_layer_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!mixture_layer_9/split_1/split_dim?
mixture_layer_9/split_1Split*mixture_layer_9/split_1/split_dim:output:0mixture_layer_9/split:output:1*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2
mixture_layer_9/split_1?
mixture_layer_9/stackPack mixture_layer_9/split_1:output:0 mixture_layer_9/split_1:output:1 mixture_layer_9/split_1:output:2 mixture_layer_9/split_1:output:3 mixture_layer_9/split_1:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
mixture_layer_9/stack?
!mixture_layer_9/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!mixture_layer_9/split_2/split_dim?
mixture_layer_9/split_2Split*mixture_layer_9/split_2/split_dim:output:0mixture_layer_9/split:output:2*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2
mixture_layer_9/split_2?
mixture_layer_9/stack_1Pack mixture_layer_9/split_2:output:0 mixture_layer_9/split_2:output:1 mixture_layer_9/split_2:output:2 mixture_layer_9/split_2:output:3 mixture_layer_9/split_2:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
mixture_layer_9/stack_1?
3mixture_layer_9/fill_triangular/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       25
3mixture_layer_9/fill_triangular/strided_slice/stack?
5mixture_layer_9/fill_triangular/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        27
5mixture_layer_9/fill_triangular/strided_slice/stack_1?
5mixture_layer_9/fill_triangular/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5mixture_layer_9/fill_triangular/strided_slice/stack_2?
-mixture_layer_9/fill_triangular/strided_sliceStridedSlice mixture_layer_9/stack_1:output:0<mixture_layer_9/fill_triangular/strided_slice/stack:output:0>mixture_layer_9/fill_triangular/strided_slice/stack_1:output:0>mixture_layer_9/fill_triangular/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*
ellipsis_mask*
end_mask2/
-mixture_layer_9/fill_triangular/strided_slice?
.mixture_layer_9/fill_triangular/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:20
.mixture_layer_9/fill_triangular/ReverseV2/axis?
)mixture_layer_9/fill_triangular/ReverseV2	ReverseV2 mixture_layer_9/stack_1:output:07mixture_layer_9/fill_triangular/ReverseV2/axis:output:0*
T0*+
_output_shapes
:?????????2+
)mixture_layer_9/fill_triangular/ReverseV2?
%mixture_layer_9/fill_triangular/ShapeShape mixture_layer_9/stack_1:output:0*
T0*
_output_shapes
:2'
%mixture_layer_9/fill_triangular/Shape?
5mixture_layer_9/fill_triangular/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5mixture_layer_9/fill_triangular/strided_slice_1/stack?
7mixture_layer_9/fill_triangular/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????29
7mixture_layer_9/fill_triangular/strided_slice_1/stack_1?
7mixture_layer_9/fill_triangular/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7mixture_layer_9/fill_triangular/strided_slice_1/stack_2?
/mixture_layer_9/fill_triangular/strided_slice_1StridedSlice.mixture_layer_9/fill_triangular/Shape:output:0>mixture_layer_9/fill_triangular/strided_slice_1/stack:output:0@mixture_layer_9/fill_triangular/strided_slice_1/stack_1:output:0@mixture_layer_9/fill_triangular/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask21
/mixture_layer_9/fill_triangular/strided_slice_1?
/mixture_layer_9/fill_triangular/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      21
/mixture_layer_9/fill_triangular/concat/values_1?
+mixture_layer_9/fill_triangular/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2-
+mixture_layer_9/fill_triangular/concat/axis?
&mixture_layer_9/fill_triangular/concatConcatV28mixture_layer_9/fill_triangular/strided_slice_1:output:08mixture_layer_9/fill_triangular/concat/values_1:output:04mixture_layer_9/fill_triangular/concat/axis:output:0*
N*
T0*
_output_shapes
:2(
&mixture_layer_9/fill_triangular/concat?
-mixture_layer_9/fill_triangular/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-mixture_layer_9/fill_triangular/concat_1/axis?
(mixture_layer_9/fill_triangular/concat_1ConcatV26mixture_layer_9/fill_triangular/strided_slice:output:02mixture_layer_9/fill_triangular/ReverseV2:output:06mixture_layer_9/fill_triangular/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:?????????2*
(mixture_layer_9/fill_triangular/concat_1?
'mixture_layer_9/fill_triangular/ReshapeReshape1mixture_layer_9/fill_triangular/concat_1:output:0/mixture_layer_9/fill_triangular/concat:output:0*
T0*/
_output_shapes
:?????????2)
'mixture_layer_9/fill_triangular/Reshape?
8mixture_layer_9/fill_triangular/MatrixBandPart/num_lowerConst*
_output_shapes
: *
dtype0*
valueB :
?????????2:
8mixture_layer_9/fill_triangular/MatrixBandPart/num_lower?
8mixture_layer_9/fill_triangular/MatrixBandPart/num_upperConst*
_output_shapes
: *
dtype0*
value	B : 2:
8mixture_layer_9/fill_triangular/MatrixBandPart/num_upper?
.mixture_layer_9/fill_triangular/MatrixBandPartMatrixBandPart0mixture_layer_9/fill_triangular/Reshape:output:0Amixture_layer_9/fill_triangular/MatrixBandPart/num_lower:output:0Amixture_layer_9/fill_triangular/MatrixBandPart/num_upper:output:0*
T0*
Tindex0*/
_output_shapes
:?????????20
.mixture_layer_9/fill_triangular/MatrixBandPart?
mixture_layer_9/onesConst*"
_output_shapes
:*
dtype0*!
valueB*  ??2
mixture_layer_9/onesr
mixture_layer_9/diag/kConst*
_output_shapes
: *
dtype0*
value	B : 2
mixture_layer_9/diag/k?
mixture_layer_9/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
mixture_layer_9/diag/num_rows?
mixture_layer_9/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
mixture_layer_9/diag/num_cols?
"mixture_layer_9/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2$
"mixture_layer_9/diag/padding_value?
mixture_layer_9/diagMatrixDiagV3mixture_layer_9/ones:output:0mixture_layer_9/diag/k:output:0&mixture_layer_9/diag/num_rows:output:0&mixture_layer_9/diag/num_cols:output:0+mixture_layer_9/diag/padding_value:output:0*
T0*&
_output_shapes
:2
mixture_layer_9/diag?
mixture_layer_9/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             2 
mixture_layer_9/transpose/perm?
mixture_layer_9/transpose	Transpose5mixture_layer_9/fill_triangular/MatrixBandPart:band:0'mixture_layer_9/transpose/perm:output:0*
T0*/
_output_shapes
:?????????2
mixture_layer_9/transpose?
mixture_layer_9/einsum/EinsumEinsummixture_layer_9/transpose:y:05mixture_layer_9/fill_triangular/MatrixBandPart:band:0*
N*
T0*/
_output_shapes
:?????????*
equationabij,abjk->abik2
mixture_layer_9/einsum/Einsum?
mixture_layer_9/mulMulmixture_layer_9_mul_xmixture_layer_9/diag:output:0*
T0*&
_output_shapes
:2
mixture_layer_9/mul?
mixture_layer_9/add_1AddV2&mixture_layer_9/einsum/Einsum:output:0mixture_layer_9/mul:z:0*
T0*/
_output_shapes
:?????????2
mixture_layer_9/add_1?
mixture_layer_9/CholeskyCholeskymixture_layer_9/add_1:z:0*
T0*/
_output_shapes
:?????????2
mixture_layer_9/Cholesky?
mixture_layer_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
mixture_layer_9/Reshape/shape?
mixture_layer_9/ReshapeReshapemixture_layer_9/add:z:0&mixture_layer_9/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/Reshape?
mixture_layer_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2!
mixture_layer_9/Reshape_1/shape?
mixture_layer_9/Reshape_1Reshapemixture_layer_9/stack:output:0(mixture_layer_9/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
mixture_layer_9/Reshape_1?
mixture_layer_9/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????}   2!
mixture_layer_9/Reshape_2/shape?
mixture_layer_9/Reshape_2Reshape!mixture_layer_9/Cholesky:output:0(mixture_layer_9/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????}2
mixture_layer_9/Reshape_2?
'mixture_layer_9/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2)
'mixture_layer_9/concatenate/concat/axis?
"mixture_layer_9/concatenate/concatConcatV2 mixture_layer_9/Reshape:output:0"mixture_layer_9/Reshape_1:output:0"mixture_layer_9/Reshape_2:output:00mixture_layer_9/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2$
"mixture_layer_9/concatenate/concat?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_54_matmul_readvariableop_resource*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_54_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_55_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_55_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
1dense_56/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_56_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_56/kernel/Regularizer/Square/ReadVariableOp?
"dense_56/kernel/Regularizer/SquareSquare9dense_56/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_56/kernel/Regularizer/Square?
!dense_56/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_56/kernel/Regularizer/Const?
dense_56/kernel/Regularizer/SumSum&dense_56/kernel/Regularizer/Square:y:0*dense_56/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/Sum?
!dense_56/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_56/kernel/Regularizer/mul/x?
dense_56/kernel/Regularizer/mulMul*dense_56/kernel/Regularizer/mul/x:output:0(dense_56/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_56/kernel/Regularizer/mul?
/dense_56/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_56/bias/Regularizer/Square/ReadVariableOp?
 dense_56/bias/Regularizer/SquareSquare7dense_56/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_56/bias/Regularizer/Square?
dense_56/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_56/bias/Regularizer/Const?
dense_56/bias/Regularizer/SumSum$dense_56/bias/Regularizer/Square:y:0(dense_56/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/Sum?
dense_56/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_56/bias/Regularizer/mul/x?
dense_56/bias/Regularizer/mulMul(dense_56/bias/Regularizer/mul/x:output:0&dense_56/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_56/bias/Regularizer/mul?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
1dense_58/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_58/kernel/Regularizer/Square/ReadVariableOp?
"dense_58/kernel/Regularizer/SquareSquare9dense_58/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_58/kernel/Regularizer/Square?
!dense_58/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_58/kernel/Regularizer/Const?
dense_58/kernel/Regularizer/SumSum&dense_58/kernel/Regularizer/Square:y:0*dense_58/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/Sum?
!dense_58/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_58/kernel/Regularizer/mul/x?
dense_58/kernel/Regularizer/mulMul*dense_58/kernel/Regularizer/mul/x:output:0(dense_58/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_58/kernel/Regularizer/mul?
/dense_58/bias/Regularizer/Square/ReadVariableOpReadVariableOp(dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_58/bias/Regularizer/Square/ReadVariableOp?
 dense_58/bias/Regularizer/SquareSquare7dense_58/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_58/bias/Regularizer/Square?
dense_58/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_58/bias/Regularizer/Const?
dense_58/bias/Regularizer/SumSum$dense_58/bias/Regularizer/Square:y:0(dense_58/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/Sum?
dense_58/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_58/bias/Regularizer/mul/x?
dense_58/bias/Regularizer/mulMul(dense_58/bias/Regularizer/mul/x:output:0&dense_58/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_58/bias/Regularizer/mul?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOp7mixture_layer_9_dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpReadVariableOp8mixture_layer_9_dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype02A
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?
0mixture_layer_9/dense_59/bias/Regularizer/SquareSquareGmixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:i22
0mixture_layer_9/dense_59/bias/Regularizer/Square?
/mixture_layer_9/dense_59/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 21
/mixture_layer_9/dense_59/bias/Regularizer/Const?
-mixture_layer_9/dense_59/bias/Regularizer/SumSum4mixture_layer_9/dense_59/bias/Regularizer/Square:y:08mixture_layer_9/dense_59/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/Sum?
/mixture_layer_9/dense_59/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:21
/mixture_layer_9/dense_59/bias/Regularizer/mul/x?
-mixture_layer_9/dense_59/bias/Regularizer/mulMul8mixture_layer_9/dense_59/bias/Regularizer/mul/x:output:06mixture_layer_9/dense_59/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2/
-mixture_layer_9/dense_59/bias/Regularizer/mul?	
IdentityIdentity+mixture_layer_9/concatenate/concat:output:0 ^dense_54/BiasAdd/ReadVariableOp^dense_54/MatMul/ReadVariableOp0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp ^dense_55/BiasAdd/ReadVariableOp^dense_55/MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp ^dense_56/BiasAdd/ReadVariableOp^dense_56/MatMul/ReadVariableOp0^dense_56/bias/Regularizer/Square/ReadVariableOp2^dense_56/kernel/Regularizer/Square/ReadVariableOp ^dense_57/BiasAdd/ReadVariableOp^dense_57/MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp ^dense_58/BiasAdd/ReadVariableOp^dense_58/MatMul/ReadVariableOp0^dense_58/bias/Regularizer/Square/ReadVariableOp2^dense_58/kernel/Regularizer/Square/ReadVariableOp0^mixture_layer_9/dense_59/BiasAdd/ReadVariableOp/^mixture_layer_9/dense_59/MatMul/ReadVariableOp@^mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOpB^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2B
dense_54/BiasAdd/ReadVariableOpdense_54/BiasAdd/ReadVariableOp2@
dense_54/MatMul/ReadVariableOpdense_54/MatMul/ReadVariableOp2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp2B
dense_55/BiasAdd/ReadVariableOpdense_55/BiasAdd/ReadVariableOp2@
dense_55/MatMul/ReadVariableOpdense_55/MatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp2B
dense_56/BiasAdd/ReadVariableOpdense_56/BiasAdd/ReadVariableOp2@
dense_56/MatMul/ReadVariableOpdense_56/MatMul/ReadVariableOp2b
/dense_56/bias/Regularizer/Square/ReadVariableOp/dense_56/bias/Regularizer/Square/ReadVariableOp2f
1dense_56/kernel/Regularizer/Square/ReadVariableOp1dense_56/kernel/Regularizer/Square/ReadVariableOp2B
dense_57/BiasAdd/ReadVariableOpdense_57/BiasAdd/ReadVariableOp2@
dense_57/MatMul/ReadVariableOpdense_57/MatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp2B
dense_58/BiasAdd/ReadVariableOpdense_58/BiasAdd/ReadVariableOp2@
dense_58/MatMul/ReadVariableOpdense_58/MatMul/ReadVariableOp2b
/dense_58/bias/Regularizer/Square/ReadVariableOp/dense_58/bias/Regularizer/Square/ReadVariableOp2f
1dense_58/kernel/Regularizer/Square/ReadVariableOp1dense_58/kernel/Regularizer/Square/ReadVariableOp2b
/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp2`
.mixture_layer_9/dense_59/MatMul/ReadVariableOp.mixture_layer_9/dense_59/MatMul/ReadVariableOp2?
?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp?mixture_layer_9/dense_59/bias/Regularizer/Square/ReadVariableOp2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: 
??
?

 __inference__wrapped_model_29407
dense_54_input=
+mdn_dense_54_matmul_readvariableop_resource:d:
,mdn_dense_54_biasadd_readvariableop_resource:d=
+mdn_dense_55_matmul_readvariableop_resource:dd:
,mdn_dense_55_biasadd_readvariableop_resource:d=
+mdn_dense_56_matmul_readvariableop_resource:dd:
,mdn_dense_56_biasadd_readvariableop_resource:d=
+mdn_dense_57_matmul_readvariableop_resource:dd:
,mdn_dense_57_biasadd_readvariableop_resource:d=
+mdn_dense_58_matmul_readvariableop_resource:dd:
,mdn_dense_58_biasadd_readvariableop_resource:dM
;mdn_mixture_layer_9_dense_59_matmul_readvariableop_resource:diJ
<mdn_mixture_layer_9_dense_59_biasadd_readvariableop_resource:i
mdn_mixture_layer_9_mul_x
identity??#MDN/dense_54/BiasAdd/ReadVariableOp?"MDN/dense_54/MatMul/ReadVariableOp?#MDN/dense_55/BiasAdd/ReadVariableOp?"MDN/dense_55/MatMul/ReadVariableOp?#MDN/dense_56/BiasAdd/ReadVariableOp?"MDN/dense_56/MatMul/ReadVariableOp?#MDN/dense_57/BiasAdd/ReadVariableOp?"MDN/dense_57/MatMul/ReadVariableOp?#MDN/dense_58/BiasAdd/ReadVariableOp?"MDN/dense_58/MatMul/ReadVariableOp?3MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp?2MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOp?
"MDN/dense_54/MatMul/ReadVariableOpReadVariableOp+mdn_dense_54_matmul_readvariableop_resource*
_output_shapes

:d*
dtype02$
"MDN/dense_54/MatMul/ReadVariableOp?
MDN/dense_54/MatMulMatMuldense_54_input*MDN/dense_54/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_54/MatMul?
#MDN/dense_54/BiasAdd/ReadVariableOpReadVariableOp,mdn_dense_54_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02%
#MDN/dense_54/BiasAdd/ReadVariableOp?
MDN/dense_54/BiasAddBiasAddMDN/dense_54/MatMul:product:0+MDN/dense_54/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_54/BiasAdd
MDN/dense_54/ReluReluMDN/dense_54/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_54/Relu?
"MDN/dense_55/MatMul/ReadVariableOpReadVariableOp+mdn_dense_55_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02$
"MDN/dense_55/MatMul/ReadVariableOp?
MDN/dense_55/MatMulMatMulMDN/dense_54/Relu:activations:0*MDN/dense_55/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_55/MatMul?
#MDN/dense_55/BiasAdd/ReadVariableOpReadVariableOp,mdn_dense_55_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02%
#MDN/dense_55/BiasAdd/ReadVariableOp?
MDN/dense_55/BiasAddBiasAddMDN/dense_55/MatMul:product:0+MDN/dense_55/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_55/BiasAdd
MDN/dense_55/ReluReluMDN/dense_55/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_55/Relu?
"MDN/dense_56/MatMul/ReadVariableOpReadVariableOp+mdn_dense_56_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02$
"MDN/dense_56/MatMul/ReadVariableOp?
MDN/dense_56/MatMulMatMulMDN/dense_55/Relu:activations:0*MDN/dense_56/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_56/MatMul?
#MDN/dense_56/BiasAdd/ReadVariableOpReadVariableOp,mdn_dense_56_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02%
#MDN/dense_56/BiasAdd/ReadVariableOp?
MDN/dense_56/BiasAddBiasAddMDN/dense_56/MatMul:product:0+MDN/dense_56/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_56/BiasAdd
MDN/dense_56/ReluReluMDN/dense_56/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_56/Relu?
"MDN/dense_57/MatMul/ReadVariableOpReadVariableOp+mdn_dense_57_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02$
"MDN/dense_57/MatMul/ReadVariableOp?
MDN/dense_57/MatMulMatMulMDN/dense_56/Relu:activations:0*MDN/dense_57/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_57/MatMul?
#MDN/dense_57/BiasAdd/ReadVariableOpReadVariableOp,mdn_dense_57_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02%
#MDN/dense_57/BiasAdd/ReadVariableOp?
MDN/dense_57/BiasAddBiasAddMDN/dense_57/MatMul:product:0+MDN/dense_57/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_57/BiasAdd
MDN/dense_57/ReluReluMDN/dense_57/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_57/Relu?
"MDN/dense_58/MatMul/ReadVariableOpReadVariableOp+mdn_dense_58_matmul_readvariableop_resource*
_output_shapes

:dd*
dtype02$
"MDN/dense_58/MatMul/ReadVariableOp?
MDN/dense_58/MatMulMatMulMDN/dense_57/Relu:activations:0*MDN/dense_58/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_58/MatMul?
#MDN/dense_58/BiasAdd/ReadVariableOpReadVariableOp,mdn_dense_58_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02%
#MDN/dense_58/BiasAdd/ReadVariableOp?
MDN/dense_58/BiasAddBiasAddMDN/dense_58/MatMul:product:0+MDN/dense_58/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_58/BiasAdd
MDN/dense_58/ReluReluMDN/dense_58/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
MDN/dense_58/Relu?
2MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOpReadVariableOp;mdn_mixture_layer_9_dense_59_matmul_readvariableop_resource*
_output_shapes

:di*
dtype024
2MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOp?
#MDN/mixture_layer_9/dense_59/MatMulMatMulMDN/dense_58/Relu:activations:0:MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2%
#MDN/mixture_layer_9/dense_59/MatMul?
3MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOpReadVariableOp<mdn_mixture_layer_9_dense_59_biasadd_readvariableop_resource*
_output_shapes
:i*
dtype025
3MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp?
$MDN/mixture_layer_9/dense_59/BiasAddBiasAdd-MDN/mixture_layer_9/dense_59/MatMul:product:0;MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????i2&
$MDN/mixture_layer_9/dense_59/BiasAdd?
MDN/mixture_layer_9/ConstConst*
_output_shapes
:*
dtype0	*-
value$B"	"              K       2
MDN/mixture_layer_9/Const?
#MDN/mixture_layer_9/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2%
#MDN/mixture_layer_9/split/split_dim?
MDN/mixture_layer_9/splitSplitV-MDN/mixture_layer_9/dense_59/BiasAdd:output:0"MDN/mixture_layer_9/Const:output:0,MDN/mixture_layer_9/split/split_dim:output:0*
T0*M
_output_shapes;
9:?????????:?????????:?????????K*
	num_split2
MDN/mixture_layer_9/split?
MDN/mixture_layer_9/SoftmaxSoftmax"MDN/mixture_layer_9/split:output:0*
T0*'
_output_shapes
:?????????2
MDN/mixture_layer_9/Softmax
MDN/mixture_layer_9/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *_p?02
MDN/mixture_layer_9/Const_1?
MDN/mixture_layer_9/addAddV2%MDN/mixture_layer_9/Softmax:softmax:0$MDN/mixture_layer_9/Const_1:output:0*
T0*'
_output_shapes
:?????????2
MDN/mixture_layer_9/add?
%MDN/mixture_layer_9/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%MDN/mixture_layer_9/split_1/split_dim?
MDN/mixture_layer_9/split_1Split.MDN/mixture_layer_9/split_1/split_dim:output:0"MDN/mixture_layer_9/split:output:1*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2
MDN/mixture_layer_9/split_1?
MDN/mixture_layer_9/stackPack$MDN/mixture_layer_9/split_1:output:0$MDN/mixture_layer_9/split_1:output:1$MDN/mixture_layer_9/split_1:output:2$MDN/mixture_layer_9/split_1:output:3$MDN/mixture_layer_9/split_1:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
MDN/mixture_layer_9/stack?
%MDN/mixture_layer_9/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%MDN/mixture_layer_9/split_2/split_dim?
MDN/mixture_layer_9/split_2Split.MDN/mixture_layer_9/split_2/split_dim:output:0"MDN/mixture_layer_9/split:output:2*
T0*s
_output_shapesa
_:?????????:?????????:?????????:?????????:?????????*
	num_split2
MDN/mixture_layer_9/split_2?
MDN/mixture_layer_9/stack_1Pack$MDN/mixture_layer_9/split_2:output:0$MDN/mixture_layer_9/split_2:output:1$MDN/mixture_layer_9/split_2:output:2$MDN/mixture_layer_9/split_2:output:3$MDN/mixture_layer_9/split_2:output:4*
N*
T0*+
_output_shapes
:?????????*

axis2
MDN/mixture_layer_9/stack_1?
7MDN/mixture_layer_9/fill_triangular/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"       29
7MDN/mixture_layer_9/fill_triangular/strided_slice/stack?
9MDN/mixture_layer_9/fill_triangular/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2;
9MDN/mixture_layer_9/fill_triangular/strided_slice/stack_1?
9MDN/mixture_layer_9/fill_triangular/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2;
9MDN/mixture_layer_9/fill_triangular/strided_slice/stack_2?
1MDN/mixture_layer_9/fill_triangular/strided_sliceStridedSlice$MDN/mixture_layer_9/stack_1:output:0@MDN/mixture_layer_9/fill_triangular/strided_slice/stack:output:0BMDN/mixture_layer_9/fill_triangular/strided_slice/stack_1:output:0BMDN/mixture_layer_9/fill_triangular/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:?????????
*
ellipsis_mask*
end_mask23
1MDN/mixture_layer_9/fill_triangular/strided_slice?
2MDN/mixture_layer_9/fill_triangular/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:24
2MDN/mixture_layer_9/fill_triangular/ReverseV2/axis?
-MDN/mixture_layer_9/fill_triangular/ReverseV2	ReverseV2$MDN/mixture_layer_9/stack_1:output:0;MDN/mixture_layer_9/fill_triangular/ReverseV2/axis:output:0*
T0*+
_output_shapes
:?????????2/
-MDN/mixture_layer_9/fill_triangular/ReverseV2?
)MDN/mixture_layer_9/fill_triangular/ShapeShape$MDN/mixture_layer_9/stack_1:output:0*
T0*
_output_shapes
:2+
)MDN/mixture_layer_9/fill_triangular/Shape?
9MDN/mixture_layer_9/fill_triangular/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2;
9MDN/mixture_layer_9/fill_triangular/strided_slice_1/stack?
;MDN/mixture_layer_9/fill_triangular/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????2=
;MDN/mixture_layer_9/fill_triangular/strided_slice_1/stack_1?
;MDN/mixture_layer_9/fill_triangular/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2=
;MDN/mixture_layer_9/fill_triangular/strided_slice_1/stack_2?
3MDN/mixture_layer_9/fill_triangular/strided_slice_1StridedSlice2MDN/mixture_layer_9/fill_triangular/Shape:output:0BMDN/mixture_layer_9/fill_triangular/strided_slice_1/stack:output:0DMDN/mixture_layer_9/fill_triangular/strided_slice_1/stack_1:output:0DMDN/mixture_layer_9/fill_triangular/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask25
3MDN/mixture_layer_9/fill_triangular/strided_slice_1?
3MDN/mixture_layer_9/fill_triangular/concat/values_1Const*
_output_shapes
:*
dtype0*
valueB"      25
3MDN/mixture_layer_9/fill_triangular/concat/values_1?
/MDN/mixture_layer_9/fill_triangular/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/MDN/mixture_layer_9/fill_triangular/concat/axis?
*MDN/mixture_layer_9/fill_triangular/concatConcatV2<MDN/mixture_layer_9/fill_triangular/strided_slice_1:output:0<MDN/mixture_layer_9/fill_triangular/concat/values_1:output:08MDN/mixture_layer_9/fill_triangular/concat/axis:output:0*
N*
T0*
_output_shapes
:2,
*MDN/mixture_layer_9/fill_triangular/concat?
1MDN/mixture_layer_9/fill_triangular/concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????23
1MDN/mixture_layer_9/fill_triangular/concat_1/axis?
,MDN/mixture_layer_9/fill_triangular/concat_1ConcatV2:MDN/mixture_layer_9/fill_triangular/strided_slice:output:06MDN/mixture_layer_9/fill_triangular/ReverseV2:output:0:MDN/mixture_layer_9/fill_triangular/concat_1/axis:output:0*
N*
T0*+
_output_shapes
:?????????2.
,MDN/mixture_layer_9/fill_triangular/concat_1?
+MDN/mixture_layer_9/fill_triangular/ReshapeReshape5MDN/mixture_layer_9/fill_triangular/concat_1:output:03MDN/mixture_layer_9/fill_triangular/concat:output:0*
T0*/
_output_shapes
:?????????2-
+MDN/mixture_layer_9/fill_triangular/Reshape?
<MDN/mixture_layer_9/fill_triangular/MatrixBandPart/num_lowerConst*
_output_shapes
: *
dtype0*
valueB :
?????????2>
<MDN/mixture_layer_9/fill_triangular/MatrixBandPart/num_lower?
<MDN/mixture_layer_9/fill_triangular/MatrixBandPart/num_upperConst*
_output_shapes
: *
dtype0*
value	B : 2>
<MDN/mixture_layer_9/fill_triangular/MatrixBandPart/num_upper?
2MDN/mixture_layer_9/fill_triangular/MatrixBandPartMatrixBandPart4MDN/mixture_layer_9/fill_triangular/Reshape:output:0EMDN/mixture_layer_9/fill_triangular/MatrixBandPart/num_lower:output:0EMDN/mixture_layer_9/fill_triangular/MatrixBandPart/num_upper:output:0*
T0*
Tindex0*/
_output_shapes
:?????????24
2MDN/mixture_layer_9/fill_triangular/MatrixBandPart?
MDN/mixture_layer_9/onesConst*"
_output_shapes
:*
dtype0*!
valueB*  ??2
MDN/mixture_layer_9/onesz
MDN/mixture_layer_9/diag/kConst*
_output_shapes
: *
dtype0*
value	B : 2
MDN/mixture_layer_9/diag/k?
!MDN/mixture_layer_9/diag/num_rowsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!MDN/mixture_layer_9/diag/num_rows?
!MDN/mixture_layer_9/diag/num_colsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2#
!MDN/mixture_layer_9/diag/num_cols?
&MDN/mixture_layer_9/diag/padding_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2(
&MDN/mixture_layer_9/diag/padding_value?
MDN/mixture_layer_9/diagMatrixDiagV3!MDN/mixture_layer_9/ones:output:0#MDN/mixture_layer_9/diag/k:output:0*MDN/mixture_layer_9/diag/num_rows:output:0*MDN/mixture_layer_9/diag/num_cols:output:0/MDN/mixture_layer_9/diag/padding_value:output:0*
T0*&
_output_shapes
:2
MDN/mixture_layer_9/diag?
"MDN/mixture_layer_9/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             2$
"MDN/mixture_layer_9/transpose/perm?
MDN/mixture_layer_9/transpose	Transpose9MDN/mixture_layer_9/fill_triangular/MatrixBandPart:band:0+MDN/mixture_layer_9/transpose/perm:output:0*
T0*/
_output_shapes
:?????????2
MDN/mixture_layer_9/transpose?
!MDN/mixture_layer_9/einsum/EinsumEinsum!MDN/mixture_layer_9/transpose:y:09MDN/mixture_layer_9/fill_triangular/MatrixBandPart:band:0*
N*
T0*/
_output_shapes
:?????????*
equationabij,abjk->abik2#
!MDN/mixture_layer_9/einsum/Einsum?
MDN/mixture_layer_9/mulMulmdn_mixture_layer_9_mul_x!MDN/mixture_layer_9/diag:output:0*
T0*&
_output_shapes
:2
MDN/mixture_layer_9/mul?
MDN/mixture_layer_9/add_1AddV2*MDN/mixture_layer_9/einsum/Einsum:output:0MDN/mixture_layer_9/mul:z:0*
T0*/
_output_shapes
:?????????2
MDN/mixture_layer_9/add_1?
MDN/mixture_layer_9/CholeskyCholeskyMDN/mixture_layer_9/add_1:z:0*
T0*/
_output_shapes
:?????????2
MDN/mixture_layer_9/Cholesky?
!MDN/mixture_layer_9/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2#
!MDN/mixture_layer_9/Reshape/shape?
MDN/mixture_layer_9/ReshapeReshapeMDN/mixture_layer_9/add:z:0*MDN/mixture_layer_9/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????2
MDN/mixture_layer_9/Reshape?
#MDN/mixture_layer_9/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2%
#MDN/mixture_layer_9/Reshape_1/shape?
MDN/mixture_layer_9/Reshape_1Reshape"MDN/mixture_layer_9/stack:output:0,MDN/mixture_layer_9/Reshape_1/shape:output:0*
T0*'
_output_shapes
:?????????2
MDN/mixture_layer_9/Reshape_1?
#MDN/mixture_layer_9/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB"????}   2%
#MDN/mixture_layer_9/Reshape_2/shape?
MDN/mixture_layer_9/Reshape_2Reshape%MDN/mixture_layer_9/Cholesky:output:0,MDN/mixture_layer_9/Reshape_2/shape:output:0*
T0*'
_output_shapes
:?????????}2
MDN/mixture_layer_9/Reshape_2?
+MDN/mixture_layer_9/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2-
+MDN/mixture_layer_9/concatenate/concat/axis?
&MDN/mixture_layer_9/concatenate/concatConcatV2$MDN/mixture_layer_9/Reshape:output:0&MDN/mixture_layer_9/Reshape_1:output:0&MDN/mixture_layer_9/Reshape_2:output:04MDN/mixture_layer_9/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2(
&MDN/mixture_layer_9/concatenate/concat?
IdentityIdentity/MDN/mixture_layer_9/concatenate/concat:output:0$^MDN/dense_54/BiasAdd/ReadVariableOp#^MDN/dense_54/MatMul/ReadVariableOp$^MDN/dense_55/BiasAdd/ReadVariableOp#^MDN/dense_55/MatMul/ReadVariableOp$^MDN/dense_56/BiasAdd/ReadVariableOp#^MDN/dense_56/MatMul/ReadVariableOp$^MDN/dense_57/BiasAdd/ReadVariableOp#^MDN/dense_57/MatMul/ReadVariableOp$^MDN/dense_58/BiasAdd/ReadVariableOp#^MDN/dense_58/MatMul/ReadVariableOp4^MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp3^MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:?????????: : : : : : : : : : : : : 2J
#MDN/dense_54/BiasAdd/ReadVariableOp#MDN/dense_54/BiasAdd/ReadVariableOp2H
"MDN/dense_54/MatMul/ReadVariableOp"MDN/dense_54/MatMul/ReadVariableOp2J
#MDN/dense_55/BiasAdd/ReadVariableOp#MDN/dense_55/BiasAdd/ReadVariableOp2H
"MDN/dense_55/MatMul/ReadVariableOp"MDN/dense_55/MatMul/ReadVariableOp2J
#MDN/dense_56/BiasAdd/ReadVariableOp#MDN/dense_56/BiasAdd/ReadVariableOp2H
"MDN/dense_56/MatMul/ReadVariableOp"MDN/dense_56/MatMul/ReadVariableOp2J
#MDN/dense_57/BiasAdd/ReadVariableOp#MDN/dense_57/BiasAdd/ReadVariableOp2H
"MDN/dense_57/MatMul/ReadVariableOp"MDN/dense_57/MatMul/ReadVariableOp2J
#MDN/dense_58/BiasAdd/ReadVariableOp#MDN/dense_58/BiasAdd/ReadVariableOp2H
"MDN/dense_58/MatMul/ReadVariableOp"MDN/dense_58/MatMul/ReadVariableOp2j
3MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp3MDN/mixture_layer_9/dense_59/BiasAdd/ReadVariableOp2h
2MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOp2MDN/mixture_layer_9/dense_59/MatMul/ReadVariableOp:W S
'
_output_shapes
:?????????
(
_user_specified_namedense_54_input:

_output_shapes
: 
?
?
C__inference_dense_57_layer_call_and_return_conditional_losses_30936

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_57/bias/Regularizer/Square/ReadVariableOp?1dense_57/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_57/bias/Regularizer/Square/ReadVariableOp2^dense_57/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
(__inference_dense_58_layer_call_fn_30957

inputs
unknown:dd
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_dense_58_layer_call_and_return_conditional_losses_295532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
/__inference_mixture_layer_9_layer_call_fn_31003

inputs
unknown:di
	unknown_0:i
	unknown_1
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_296442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????d: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
C__inference_dense_54_layer_call_and_return_conditional_losses_29437

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_54/bias/Regularizer/Square/ReadVariableOp?1dense_54/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_54/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype023
1dense_54/kernel/Regularizer/Square/ReadVariableOp?
"dense_54/kernel/Regularizer/SquareSquare9dense_54/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:d2$
"dense_54/kernel/Regularizer/Square?
!dense_54/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_54/kernel/Regularizer/Const?
dense_54/kernel/Regularizer/SumSum&dense_54/kernel/Regularizer/Square:y:0*dense_54/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/Sum?
!dense_54/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_54/kernel/Regularizer/mul/x?
dense_54/kernel/Regularizer/mulMul*dense_54/kernel/Regularizer/mul/x:output:0(dense_54/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_54/kernel/Regularizer/mul?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_54/bias/Regularizer/Square/ReadVariableOp2^dense_54/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp2f
1dense_54/kernel/Regularizer/Square/ReadVariableOp1dense_54/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_7_31176F
8dense_57_bias_regularizer_square_readvariableop_resource:d
identity??/dense_57/bias/Regularizer/Square/ReadVariableOp?
/dense_57/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_57_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_57/bias/Regularizer/Square/ReadVariableOp?
 dense_57/bias/Regularizer/SquareSquare7dense_57/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_57/bias/Regularizer/Square?
dense_57/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_57/bias/Regularizer/Const?
dense_57/bias/Regularizer/SumSum$dense_57/bias/Regularizer/Square:y:0(dense_57/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/Sum?
dense_57/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_57/bias/Regularizer/mul/x?
dense_57/bias/Regularizer/mulMul(dense_57/bias/Regularizer/mul/x:output:0&dense_57/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_57/bias/Regularizer/mul?
IdentityIdentity!dense_57/bias/Regularizer/mul:z:00^dense_57/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_57/bias/Regularizer/Square/ReadVariableOp/dense_57/bias/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_1_31110F
8dense_54_bias_regularizer_square_readvariableop_resource:d
identity??/dense_54/bias/Regularizer/Square/ReadVariableOp?
/dense_54/bias/Regularizer/Square/ReadVariableOpReadVariableOp8dense_54_bias_regularizer_square_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_54/bias/Regularizer/Square/ReadVariableOp?
 dense_54/bias/Regularizer/SquareSquare7dense_54/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_54/bias/Regularizer/Square?
dense_54/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_54/bias/Regularizer/Const?
dense_54/bias/Regularizer/SumSum$dense_54/bias/Regularizer/Square:y:0(dense_54/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/Sum?
dense_54/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_54/bias/Regularizer/mul/x?
dense_54/bias/Regularizer/mulMul(dense_54/bias/Regularizer/mul/x:output:0&dense_54/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_54/bias/Regularizer/mul?
IdentityIdentity!dense_54/bias/Regularizer/mul:z:00^dense_54/bias/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2b
/dense_54/bias/Regularizer/Square/ReadVariableOp/dense_54/bias/Regularizer/Square/ReadVariableOp
?
?
C__inference_dense_55_layer_call_and_return_conditional_losses_30848

inputs0
matmul_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?/dense_55/bias/Regularizer/Square/ReadVariableOp?1dense_55/kernel/Regularizer/Square/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Relu?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
/dense_55/bias/Regularizer/Square/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype021
/dense_55/bias/Regularizer/Square/ReadVariableOp?
 dense_55/bias/Regularizer/SquareSquare7dense_55/bias/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:d2"
 dense_55/bias/Regularizer/Square?
dense_55/bias/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2!
dense_55/bias/Regularizer/Const?
dense_55/bias/Regularizer/SumSum$dense_55/bias/Regularizer/Square:y:0(dense_55/bias/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/Sum?
dense_55/bias/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2!
dense_55/bias/Regularizer/mul/x?
dense_55/bias/Regularizer/mulMul(dense_55/bias/Regularizer/mul/x:output:0&dense_55/bias/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
dense_55/bias/Regularizer/mul?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp0^dense_55/bias/Regularizer/Square/ReadVariableOp2^dense_55/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2b
/dense_55/bias/Regularizer/Square/ReadVariableOp/dense_55/bias/Regularizer/Square/ReadVariableOp2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
__inference_loss_fn_6_31165L
:dense_57_kernel_regularizer_square_readvariableop_resource:dd
identity??1dense_57/kernel/Regularizer/Square/ReadVariableOp?
1dense_57/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_57_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_57/kernel/Regularizer/Square/ReadVariableOp?
"dense_57/kernel/Regularizer/SquareSquare9dense_57/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_57/kernel/Regularizer/Square?
!dense_57/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_57/kernel/Regularizer/Const?
dense_57/kernel/Regularizer/SumSum&dense_57/kernel/Regularizer/Square:y:0*dense_57/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/Sum?
!dense_57/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_57/kernel/Regularizer/mul/x?
dense_57/kernel/Regularizer/mulMul*dense_57/kernel/Regularizer/mul/x:output:0(dense_57/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_57/kernel/Regularizer/mul?
IdentityIdentity#dense_57/kernel/Regularizer/mul:z:02^dense_57/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_57/kernel/Regularizer/Square/ReadVariableOp1dense_57/kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_10_31221\
Jmixture_layer_9_dense_59_kernel_regularizer_square_readvariableop_resource:di
identity??Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpReadVariableOpJmixture_layer_9_dense_59_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:di*
dtype02C
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp?
2mixture_layer_9/dense_59/kernel/Regularizer/SquareSquareImixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:di24
2mixture_layer_9/dense_59/kernel/Regularizer/Square?
1mixture_layer_9/dense_59/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       23
1mixture_layer_9/dense_59/kernel/Regularizer/Const?
/mixture_layer_9/dense_59/kernel/Regularizer/SumSum6mixture_layer_9/dense_59/kernel/Regularizer/Square:y:0:mixture_layer_9/dense_59/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/Sum?
1mixture_layer_9/dense_59/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:23
1mixture_layer_9/dense_59/kernel/Regularizer/mul/x?
/mixture_layer_9/dense_59/kernel/Regularizer/mulMul:mixture_layer_9/dense_59/kernel/Regularizer/mul/x:output:08mixture_layer_9/dense_59/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 21
/mixture_layer_9/dense_59/kernel/Regularizer/mul?
IdentityIdentity3mixture_layer_9/dense_59/kernel/Regularizer/mul:z:0B^mixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2?
Amixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOpAmixture_layer_9/dense_59/kernel/Regularizer/Square/ReadVariableOp
??
?
!__inference__traced_restore_31494
file_prefix2
 assignvariableop_dense_54_kernel:d.
 assignvariableop_1_dense_54_bias:d4
"assignvariableop_2_dense_55_kernel:dd.
 assignvariableop_3_dense_55_bias:d4
"assignvariableop_4_dense_56_kernel:dd.
 assignvariableop_5_dense_56_bias:d4
"assignvariableop_6_dense_57_kernel:dd.
 assignvariableop_7_dense_57_bias:d4
"assignvariableop_8_dense_58_kernel:dd.
 assignvariableop_9_dense_58_bias:dE
3assignvariableop_10_mixture_layer_9_dense_59_kernel:di?
1assignvariableop_11_mixture_layer_9_dense_59_bias:i#
assignvariableop_12_total: #
assignvariableop_13_count: 7
%assignvariableop_14_dense_54_kernel_m:d1
#assignvariableop_15_dense_54_bias_m:d7
%assignvariableop_16_dense_55_kernel_m:dd1
#assignvariableop_17_dense_55_bias_m:d7
%assignvariableop_18_dense_56_kernel_m:dd1
#assignvariableop_19_dense_56_bias_m:d7
%assignvariableop_20_dense_57_kernel_m:dd1
#assignvariableop_21_dense_57_bias_m:d7
%assignvariableop_22_dense_58_kernel_m:dd1
#assignvariableop_23_dense_58_bias_m:dG
5assignvariableop_24_mixture_layer_9_dense_59_kernel_m:diA
3assignvariableop_25_mixture_layer_9_dense_59_bias_m:i7
%assignvariableop_26_dense_54_kernel_v:d1
#assignvariableop_27_dense_54_bias_v:d7
%assignvariableop_28_dense_55_kernel_v:dd1
#assignvariableop_29_dense_55_bias_v:d7
%assignvariableop_30_dense_56_kernel_v:dd1
#assignvariableop_31_dense_56_bias_v:d7
%assignvariableop_32_dense_57_kernel_v:dd1
#assignvariableop_33_dense_57_bias_v:d7
%assignvariableop_34_dense_58_kernel_v:dd1
#assignvariableop_35_dense_58_bias_v:dG
5assignvariableop_36_mixture_layer_9_dense_59_kernel_v:diA
3assignvariableop_37_mixture_layer_9_dense_59_bias_v:i
identity_39??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_54_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_54_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_55_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_55_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_56_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_56_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_57_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_57_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_58_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_58_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp3assignvariableop_10_mixture_layer_9_dense_59_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp1assignvariableop_11_mixture_layer_9_dense_59_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_dense_54_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_dense_54_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp%assignvariableop_16_dense_55_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp#assignvariableop_17_dense_55_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_dense_56_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp#assignvariableop_19_dense_56_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_dense_57_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp#assignvariableop_21_dense_57_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp%assignvariableop_22_dense_58_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp#assignvariableop_23_dense_58_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp5assignvariableop_24_mixture_layer_9_dense_59_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp3assignvariableop_25_mixture_layer_9_dense_59_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_dense_54_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp#assignvariableop_27_dense_54_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp%assignvariableop_28_dense_55_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp#assignvariableop_29_dense_55_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp%assignvariableop_30_dense_56_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp#assignvariableop_31_dense_56_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp%assignvariableop_32_dense_57_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp#assignvariableop_33_dense_57_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp%assignvariableop_34_dense_58_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp#assignvariableop_35_dense_58_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp5assignvariableop_36_mixture_layer_9_dense_59_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp3assignvariableop_37_mixture_layer_9_dense_59_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_379
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_38?
Identity_39IdentityIdentity_38:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_39"#
identity_39Identity_39:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
__inference_loss_fn_2_31121L
:dense_55_kernel_regularizer_square_readvariableop_resource:dd
identity??1dense_55/kernel/Regularizer/Square/ReadVariableOp?
1dense_55/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_55_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:dd*
dtype023
1dense_55/kernel/Regularizer/Square/ReadVariableOp?
"dense_55/kernel/Regularizer/SquareSquare9dense_55/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:dd2$
"dense_55/kernel/Regularizer/Square?
!dense_55/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2#
!dense_55/kernel/Regularizer/Const?
dense_55/kernel/Regularizer/SumSum&dense_55/kernel/Regularizer/Square:y:0*dense_55/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/Sum?
!dense_55/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2#
!dense_55/kernel/Regularizer/mul/x?
dense_55/kernel/Regularizer/mulMul*dense_55/kernel/Regularizer/mul/x:output:0(dense_55/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
dense_55/kernel/Regularizer/mul?
IdentityIdentity#dense_55/kernel/Regularizer/mul:z:02^dense_55/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_55/kernel/Regularizer/Square/ReadVariableOp1dense_55/kernel/Regularizer/Square/ReadVariableOp"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
I
dense_54_input7
 serving_default_dense_54_input:0?????????D
mixture_layer_91
StatefulPartitionedCall:0??????????tensorflow/serving/predict:??
?'
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	regularization_losses

trainable_variables
	keras_api

signatures
{_default_save_signature
|__call__
*}&call_and_return_all_conditional_losses
~loss"?$
_tf_keras_sequential?${"name": "MDN", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "MDN", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_54_input"}}, {"class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MixtureLayer", "config": {"layer was saved without config": true}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 5]}, "float32", "dense_54_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential"}, "training_config": {"loss": "loss", "metrics": [[]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.001, "decay": 0.0, "beta_1": 0.9, "beta_2": 0.999, "epsilon": 1e-07, "amsgrad": false}}}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_54", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_54", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 5]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 5}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 5]}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_55", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_55", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_56", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_56", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 21}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


kernel
 bias
!	variables
"trainable_variables
#regularization_losses
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_57", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_57", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?


%kernel
&bias
'	variables
(trainable_variables
)regularization_losses
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "dense_58", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_58", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 100]}, "dtype": "float32", "units": 100, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?

+_layer
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "mixture_layer_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MixtureLayer", "config": {"layer was saved without config": true}}
?mcmdmemfmgmhmi mj%mk&ml0mm1mnvovpvqvrvsvtvu vv%vw&vx0vy1vz"
	optimizer
v
0
1
2
3
4
5
6
 7
%8
&9
010
111"
trackable_list_wrapper
p
?0
?1
?2
?3
?4
?5
?6
?7
?8
?9"
trackable_list_wrapper
v
0
1
2
3
4
5
6
 7
%8
&9
010
111"
trackable_list_wrapper
?
	variables
2layer_regularization_losses
3metrics
4non_trainable_variables
	regularization_losses

trainable_variables
5layer_metrics

6layers
|__call__
{_default_save_signature
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
!:d2dense_54/kernel
:d2dense_54/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
	variables
7layer_regularization_losses
trainable_variables
8non_trainable_variables
regularization_losses
9metrics
:layer_metrics

;layers
__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_55/kernel
:d2dense_55/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
	variables
<layer_regularization_losses
trainable_variables
=non_trainable_variables
regularization_losses
>metrics
?layer_metrics

@layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_56/kernel
:d2dense_56/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
	variables
Alayer_regularization_losses
trainable_variables
Bnon_trainable_variables
regularization_losses
Cmetrics
Dlayer_metrics

Elayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_57/kernel
:d2dense_57/bias
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
!	variables
Flayer_regularization_losses
"trainable_variables
Gnon_trainable_variables
#regularization_losses
Hmetrics
Ilayer_metrics

Jlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:dd2dense_58/kernel
:d2dense_58/bias
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
'	variables
Klayer_regularization_losses
(trainable_variables
Lnon_trainable_variables
)regularization_losses
Mmetrics
Nlayer_metrics

Olayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

0kernel
1bias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_59", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_59", "trainable": true, "dtype": "float32", "units": 105, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 3}, "bias_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}, "shared_object_id": 4}, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 27}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
,	variables
Tlayer_regularization_losses
-trainable_variables
Unon_trainable_variables
.regularization_losses
Vmetrics
Wlayer_metrics

Xlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
1:/di2mixture_layer_9/dense_59/kernel
+:)i2mixture_layer_9/dense_59/bias
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
P	variables
Zlayer_regularization_losses
Qtrainable_variables
[non_trainable_variables
Rregularization_losses
\metrics
]layer_metrics

^layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
+0"
trackable_list_wrapper
?
	_total
	`count
a	variables
b	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 28}
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
.
_0
`1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
!:d2dense_54/kernel/m
:d2dense_54/bias/m
!:dd2dense_55/kernel/m
:d2dense_55/bias/m
!:dd2dense_56/kernel/m
:d2dense_56/bias/m
!:dd2dense_57/kernel/m
:d2dense_57/bias/m
!:dd2dense_58/kernel/m
:d2dense_58/bias/m
1:/di2!mixture_layer_9/dense_59/kernel/m
+:)i2mixture_layer_9/dense_59/bias/m
!:d2dense_54/kernel/v
:d2dense_54/bias/v
!:dd2dense_55/kernel/v
:d2dense_55/bias/v
!:dd2dense_56/kernel/v
:d2dense_56/bias/v
!:dd2dense_57/kernel/v
:d2dense_57/bias/v
!:dd2dense_58/kernel/v
:d2dense_58/bias/v
1:/di2!mixture_layer_9/dense_59/kernel/v
+:)i2mixture_layer_9/dense_59/bias/v
?2?
 __inference__wrapped_model_29407?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *-?*
(?%
dense_54_input?????????
?2?
#__inference_MDN_layer_call_fn_29754
#__inference_MDN_layer_call_fn_30369
#__inference_MDN_layer_call_fn_30400
#__inference_MDN_layer_call_fn_30017?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
>__inference_MDN_layer_call_and_return_conditional_losses_30580
>__inference_MDN_layer_call_and_return_conditional_losses_30760
>__inference_MDN_layer_call_and_return_conditional_losses_30125
>__inference_MDN_layer_call_and_return_conditional_losses_30233?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec"
args?
jself
jy
joutput
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_54_layer_call_fn_30781?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_54_layer_call_and_return_conditional_losses_30804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_55_layer_call_fn_30825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_55_layer_call_and_return_conditional_losses_30848?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_56_layer_call_fn_30869?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_56_layer_call_and_return_conditional_losses_30892?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_57_layer_call_fn_30913?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_57_layer_call_and_return_conditional_losses_30936?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_dense_58_layer_call_fn_30957?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_58_layer_call_and_return_conditional_losses_30980?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
/__inference_mixture_layer_9_layer_call_fn_31003?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_31088?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_31099?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_31110?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_31121?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_31132?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_4_31143?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_5_31154?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_6_31165?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_7_31176?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_8_31187?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_9_31198?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
#__inference_signature_wrapper_30338dense_54_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_10_31221?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_11_31232?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
	J
Const?
>__inference_MDN_layer_call_and_return_conditional_losses_30125y %&01???<
5?2
(?%
dense_54_input?????????
p 

 
? "&?#
?
0??????????
? ?
>__inference_MDN_layer_call_and_return_conditional_losses_30233y %&01???<
5?2
(?%
dense_54_input?????????
p

 
? "&?#
?
0??????????
? ?
>__inference_MDN_layer_call_and_return_conditional_losses_30580q %&01?7?4
-?*
 ?
inputs?????????
p 

 
? "&?#
?
0??????????
? ?
>__inference_MDN_layer_call_and_return_conditional_losses_30760q %&01?7?4
-?*
 ?
inputs?????????
p

 
? "&?#
?
0??????????
? ?
#__inference_MDN_layer_call_fn_29754l %&01???<
5?2
(?%
dense_54_input?????????
p 

 
? "????????????
#__inference_MDN_layer_call_fn_30017l %&01???<
5?2
(?%
dense_54_input?????????
p

 
? "????????????
#__inference_MDN_layer_call_fn_30369d %&01?7?4
-?*
 ?
inputs?????????
p 

 
? "????????????
#__inference_MDN_layer_call_fn_30400d %&01?7?4
-?*
 ?
inputs?????????
p

 
? "????????????
 __inference__wrapped_model_29407? %&01?7?4
-?*
(?%
dense_54_input?????????
? "B??
=
mixture_layer_9*?'
mixture_layer_9???????????
C__inference_dense_54_layer_call_and_return_conditional_losses_30804\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????d
? {
(__inference_dense_54_layer_call_fn_30781O/?,
%?"
 ?
inputs?????????
? "??????????d?
C__inference_dense_55_layer_call_and_return_conditional_losses_30848\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? {
(__inference_dense_55_layer_call_fn_30825O/?,
%?"
 ?
inputs?????????d
? "??????????d?
C__inference_dense_56_layer_call_and_return_conditional_losses_30892\/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? {
(__inference_dense_56_layer_call_fn_30869O/?,
%?"
 ?
inputs?????????d
? "??????????d?
C__inference_dense_57_layer_call_and_return_conditional_losses_30936\ /?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? {
(__inference_dense_57_layer_call_fn_30913O /?,
%?"
 ?
inputs?????????d
? "??????????d?
C__inference_dense_58_layer_call_and_return_conditional_losses_30980\%&/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????d
? {
(__inference_dense_58_layer_call_fn_30957O%&/?,
%?"
 ?
inputs?????????d
? "??????????d:
__inference_loss_fn_0_31099?

? 
? "? ;
__inference_loss_fn_10_312210?

? 
? "? ;
__inference_loss_fn_11_312321?

? 
? "? :
__inference_loss_fn_1_31110?

? 
? "? :
__inference_loss_fn_2_31121?

? 
? "? :
__inference_loss_fn_3_31132?

? 
? "? :
__inference_loss_fn_4_31143?

? 
? "? :
__inference_loss_fn_5_31154?

? 
? "? :
__inference_loss_fn_6_31165?

? 
? "? :
__inference_loss_fn_7_31176 ?

? 
? "? :
__inference_loss_fn_8_31187%?

? 
? "? :
__inference_loss_fn_9_31198&?

? 
? "? ?
J__inference_mixture_layer_9_layer_call_and_return_conditional_losses_31088_01?/?,
%?"
 ?
inputs?????????d
? "&?#
?
0??????????
? ?
/__inference_mixture_layer_9_layer_call_fn_31003R01?/?,
%?"
 ?
inputs?????????d
? "????????????
#__inference_signature_wrapper_30338? %&01?I?F
? 
??<
:
dense_54_input(?%
dense_54_input?????????"B??
=
mixture_layer_9*?'
mixture_layer_9??????????