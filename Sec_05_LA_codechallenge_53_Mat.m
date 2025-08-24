%% Code challenge from video 53

clear, clc

%% Symmetry of combined symmetric matrices

% create two symmetric matrices
n = 20;
A = randi(n,4,5);
B = randi(n,4,5);

S1 = (A'*A);
S2 = (B'*B);

% combine symmetric matrices by matrix addition (still symmetric)
Add = S1 + S2;
Add - Add'

% combine symmetric matrices by standard matrix multiplication (no longer symmetric)
StdP = S1 * S2;
StdP - StdP'

% combine symmetric matrices by Hadamard matrix multiplication (still symmetric)
HadP = S1 .* S2;
HadP - HadP'

% Basically any element-wise operation preserves the symmetry, while row-
% and column-wise operations of course cannot do that because they will
% generate different combinations

