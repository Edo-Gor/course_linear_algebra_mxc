%% Code challenge from video 131
clear, clc

%% Eigenvalues of diagonal and triangular matrices

% generate a 2x2 diagonal matrix and compute the eigenvalues
d1 = randn(2,1);
A1 = diag(d1);

eigvals1 = eig(A1);

disp(eigvals1)
disp(' ')

% expand to nxn diagonal matrices
d2 = rand(7,1);
A2 = diag(d2);

eigvals2 = eig(A2);

disp(eigvals2)
disp(' ')

% expand to triangular matrices, both upper and lower
Aup = triu(randn(5));
eigvals3 = eig(Aup);

Alow = tril(randn(5));
eigvals4 = eig(Alow);

disp(eigvals3)
disp(' ')
disp(eigvals4)
disp(' ')

% in short, both diagonal and triangular matrices have their diagonal
% elements as eigenvalues


