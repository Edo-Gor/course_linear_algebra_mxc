%% Code challenge from video 35

clear, clc

%% Test for some random MxN matrices whether matrix-scala multiplication is linear/distributive

% in other words test whether: s(A+B) = sA + sB, or that s(A+B) - (sA + sB) = 0 

n = 20;
s = randi(n);

A = randi(n,5,6);
B = randi(n,5,6);

sum1 = s*(A+B);
sum2 = s*A + s*B;

isequal = sum1 == sum2;
disp(isequal)

% yes it is a linear operation
