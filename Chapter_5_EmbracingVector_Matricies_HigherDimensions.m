clear;
clc;

%% Working with Matrix 

%axb a = row vector, b = column vector

% 1x2 matrix
a=[5,6];

% 2x1 matrix
b=[5;6];

%2x2 matrix
c=[1,2;3,4];

%creating range of matrix
d=[1:10];

%linspace(n-start, n-end, amount-of-values) 
e=linspace(5,10,11);

%same as linspace but using colon[n-start, step, n-end]
f=[5:0.5:10];
%same but column vector
g=[5:0.5:10]';

%% Adding substracting, mulityplying and dividing matricies 

% Add or substract matricies not that they should be same size

var_1=[1,2;3,4];
var_2=[4,3;2,1];
var_3=var_1 + var_2;

%scalar multiplication / division
var_4 = [1,2;3,4] * 3;
var_5 = [6,9;12,15] / 3;

%guzinta
var_6 = 3 \ [6,9;12,15];
var_7 = 3 * [1,2;3,4];

%multiplying two vectors
var_8 = [1,3] * [2;4]; % => var_8 = (1 * 3) + (3 * 4) = 14 inner product
var_9 = [1*3,2*3;1*4,2*4]; %outer product
var_9_1 = bsxfun(@times,[1,2], [3;4]);

%Multiplying matrix by vextor

% row vector multiplication
var_10 = [1,2] * [3,4;5,6]; % => var_10=(1*3 + 2*5) ; (1*4 + 2*6)
var_10_1 = [1,2,3] * [4,5;6,7;8,9]; %=> var_101=(1*4 + 2*6 + 3 * 8);(1*5 + 2*7 + 3*9)
var_10_2 = [1,2,3] * [4,5,6;7,8,9;10,11,12]; % => (1*4 + 2*7 + 3*10); (1*5 + 2*8 + 3*11); (1*6 + 2*9 + 3 *12)
%column vector multiplication
var_10_3 = [4,5,6;7,8,9;10,11,12] * [1;2;3];
%=>
% 1*4 + 2*5 + 3*6
% 1*7 + 2*8 + 3*9
% 1*10 + 2*11 + 3*12

%multyplying two maticies
var_11 = [1,2,3;4,5,6] * [7,8;9,10;11,12];% => (1*7 + 2*9 + 3*11),(1*8 + 2*10 + 3*12);(4*7 + 5*9 + 6*11),(4*8 + 5*10 + 6*12)
var_11_1 = [7,8;9,10;11,12] * [1,2,3;4,5,6];
% => 
%(7*1 + 8*4), (7*2 + 8*5), (7*3 + 8*6)
%(9*1 + 10*4), (9*2 + 10*5), (9*3 + 10*6)
%(11*1 + 12*4), (11*2 + 12*5), (11*3 + 12*6)

%Dividing two vectors

var_12 = [2,3,4] / [5,6,7];
var_12_1 = [2,3,4] \ [5,6,7]; %http://van.physics.illinois.edu/qa/listing.php?id= 24304

%Dividing vector by scalar
var_13 = [2,4,6] / 2;
var_13_1 = [2,4,6] \2;
var_13_2 =  2 \ [2,4,6];

%Dividing a matric by vector 

var_14 = bsxfun(@rdivide, [2,4;6,8], [2,4]);%=> (2/2, 4/4);(6/2,8/4)

%Dividing two matricies 
var_15 = [2,4;6,8] / [1,2;3,4];
var_15_1 = [2,4;6,8] \ [1,2;3,4];

%inversion of multiplication 
var_16 = [2,4;6,8] * inv([1,2;3,4]);
var_16_1 = inv([2,4;6,8]) * [1,2;3,4];
var_16_2 = bsxfun(@ldivide,[2,4;6,8],[1,2;3,4]);
var_16_2 = bsxfun(@rdivide,[2,4;6,8],[1,2;3,4]);

%Power of Root matrix
var_17 = [1,2;3,4]^2;
var_17_1 = mpower([1,2;3,4], 2);

%root of matrix
var_18 = [1,2;3,4]^0.5;
var_18_1 = [1,2;3,4]^(-1);
var_18_2 = bsxfun(@power,[1,2;3,4],2);
var_18_3 = [1,2;3,4].^2;

%% Checking Matrix Relation

var_19 = bsxfun(@eq,inv([1,2;3,4]), [1,2;3,4]^(-1));
var_20 = [1,2;3,4].* [5,6;7,8];

%% Using complex number http://mathisfun.com/numbers/imaginary-numbers.html
% axa=a^2
% (-a)*(-a)=a^2
% i*i=-1 => i=sqrt(-1);
% sqrt(-9) => (sqrt(9) * sqrt(-1))=> 3*sqrt(-1)=>3i
% in general sqrt(-x)=i*sqrt(x);

var_21 = [1,2;3,4]^0.5;
var_21_1 = var_21^2;
var_21_2 = int32(var_21 ^2);
var_21_3 = int32([1,2;3,4]^0.5);

%% Working with exponents
% http://sosmath.com/matrix/expo/expo.html
%Tn^x = 1 + (x/1!) + (x^2/2!) + (x^3/3!) +..+ (x^n/n!);
%An = In + (1/1!)*A +(1/2!)A^2 + (1/3!)*A^3 +..+ (1/n!)*A^n
var_22 = expm([1,2;3,4]);
var_22_1 = exp([1,2;3,4]);

%% Multiple dimension matrix

%Creating matrix
matrix_1 = zeros(2,3,3);
matrix_1(:,:,1)=[1,2,3;4,5,6,];
matrix_1(:,:,2)=[7,8,9;10,11,12];
matrix_1(:,:,3)=[13,14,15;16,17,18];

matrix_1_1=cat(3,[1,2,3;4,5,6],[7,8,9;10,11,12],[13,14,15;16,17,18]);
matrix_1_2=rand(2,3,3);

%Accesing matrix
matrix_2 = matrix_1_1(:,:,2);
matrix_2_1= matrix_1_1(2,:,2);
matrix_2_2= matrix_1_1(2,2,2);
matrix_2_3= matrix_1_1(2,[1:2],2);
matrix_2_4= matrix_1_1([1:2],[1,2],2);


%Replacing a single value in a matrix

matrix_3 = matrix_1_2;
matrix_3(2,2,2) = 44;

%Reoplacing the range of elements

matrix_4 = matrix_1_2;
matrix_4_1 = matrix_1_2;
matrix_4_2 = matrix_1_2;
matrix_4_3 = matrix_1_2;
matrix_4(2,[2:3],3) = 10;
matrix_4_1(2,[1:3],2) = [22,33,44];
matrix_4_2([1:2],[1:2],1) = [11,22;33,44];
matrix_4_3([1:2],3,3) = [44,55];

%Resizing the matrix

matrix_5 = rand(3,3,3);
matrix_5_1 = matrix_5;
matrix_5_2 = matrix_5;
matrix_5_3 = matrix_5;
matrix_5_4 = matrix_5;

%Matrix 3x3x3 => 2x3x3;
matrix_5_1(3,:,:) = [];
%Matrix 3x3x3 => 3x2x3
matrix_5_2(:,2,:) = [];
%Matrix 3x3x3 => 3x3x2
matrix_5_3(:,:,2) = [];
%Matrix 3x3x3 = 3x4x3
matrix_5_4(:,4,1) = [77,88,99];

%% Using cell array and structures

%Create cell array 
cell_1 = cell(2,2,2);
cell_1{1,1,1} = 'George';
cell_1{1,2,1} = 'Smith';
cell_1{2,1,1} = rand();
cell_1{2,2,1} = uint16(1953);
cell_1{1,1,2} = true;
cell_1{1,2,2} = false;
cell_1{2,1,2} = 14.551+2.113i;
cell_1{2,2,2} = 'The End';

%Create structure
struct_1 = struct('FirstName', 'John', 'LastName', 'Smith', 'Age', 32, 'Married', true);
struct_1(2) = struct('FirstName', 'Mary', 'LastName', 'Wang', 'Age', 42, 'Married', true);

struc_2 = struct('matrix1', matrix_1, 'matrix2', matrix_2, 'matrix3', matrix_3);
struc_2(2) = struct('matrix1', matrix_4, 'matrix2', matrix_5, 'matrix3', matrix_5_4);

%% Matrix help

help_1 = zeros(3);
help_2 = ones(5);
help_3 = rand(1080);
%subplot(1,2,1);
%imshow(help_3);
help_4 = randn(1248);
%subplot(1,2,2);
%imshow(help_4);
help_5 = blkdiag(ones(4), ones(4), ones(3));

help_6 = magic(1080);
help_7 = gallery('chebspec', 1920,1080);

s = rng();
help_8 = rand(1,5);
help_8_1 = rand(1,5);
rng(s);
help_8_2 = rand(1,5);

sprev = rng(0,'v5uniform');
help_8_3 = rand();
help_8_4 = rand();
rng(sprev);
help_8_5 = rand();

help_9 = size(matrix_1);
help_10 = length(e);

spy(blkdiag(ones(100), ones(200), ones(100)));
