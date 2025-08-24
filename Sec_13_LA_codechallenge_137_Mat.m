%% Code challenge from video 137

clear, clc

%% Eigendecomposition of matrix differences

% show in code that if (A-B)v = lv, then (A^2-AB-BA+B^2) = l^2v;
% start by creating symmetric matrices to void complex-valued eigvals

A = randn(3);
A = A*A';
B = randn(3);
B = B*B';

% compute the eigendecomposition

[eigvecs, eigvals] = eig(A-B);

% check the claim

test0 = eigvals(1,1)^2 * eigvecs(:,1);
test1 = (A-B)^2 * eigvecs(:,1);
test2 = (A^2 - A*B - B*A + B^2) * eigvecs(:,1);

disp(test0)
disp(' ')
disp(test1)
disp(' ')
disp(test2)
disp(' ')




