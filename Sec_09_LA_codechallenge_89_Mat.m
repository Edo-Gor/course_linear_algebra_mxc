%% Code challenge from video 89

clear, clc

%% Determinant of small and large singular matrices

% singular matrices have a determinant of 0

% generate a 2x2 matrix of random integer with some linear dependency and
% compute the determinant
n = 50;
A = randi(n,2);
A(:,2) = A(:,1).*2;

det(A)

% generate a mxm matrix, with a linear dependency, and compute the
% determinat; try with small and large m values
m = 4;
B = randi(n,m);
B(:,2) = B(:,1).*2;

det(B)


m = 30;
C = randi(n,m);
C(:,2) = C(:,1).*2;

det(C)

% in short, computing the determinant in practice is problematic; don't use
% this function to test for matrix syngularity!

