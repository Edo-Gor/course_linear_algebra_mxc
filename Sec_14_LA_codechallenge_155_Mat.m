%% Code challenge from video 155

clear, clc

%% When is UV^T valid, what is its norm, and is it orthogonal?
% UV^T is valid when the original matrix A is square

% generate a matrix for UV^T to be valid
n = 5;
m = n;
A = randn(n,m);

% compute the norm of U, of V, and of UV'
[U,S,V] = svd(A);

norm_U  = norm(U);  % Shatten p-norm
norm_V  = norm(U);
norm_UV = norm((U*V'));

disp(norm_U)
disp(' ')
disp(norm_V)
disp(' ')
disp(norm_UV)
disp(' ')

% consider the products UU', VV', and UV'
disp(U*U')
disp(' ')
disp(V*V')
disp(' ')
disp(U*V')
disp(' ')



