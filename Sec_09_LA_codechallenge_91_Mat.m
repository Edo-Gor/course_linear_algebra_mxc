%% Code challenge from video 91

clear, clc

%% Large matrices with row exchanges

% generate a 6x6 matrix (full rank)
A = randn(6,6);

% compute the determinant, swap one row, determinant, swap another row,
% determinant again
det(A)

B = A;
B(2,:) = A(1,:);
B(1,:) = A(2,:);
det(B) 

C = B;
C(6,:) = B(5,:);
C(5,:) = B(6,:);
det(C) 


