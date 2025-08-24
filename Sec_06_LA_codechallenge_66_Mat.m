%% Code challenge from video 66

clear, clc

%% Test whether the matrix rank is invariant to scalar multiplication

% basically, is rank(A) != rank(l*A) ? Start by creating a full rank and a
% reduced-rank matrix, both rectangular with same mxn size for ease
F = randn(8,6);

r = 3;
r1 = randn(8,r);
r2 = randn(r,6);
R = r1*r2;

rank(F)
rank(R)

% create a scalar and print the rank of the matrices alone and of the
% matrices multiplied by the scalar
l = 5;

Fs = l*F;
Rs = l*R;

rank(Fs)
rank(Rs)

% test whether the rank is a linear operator, i.e. whether you can have
% rank(l*A) == l*rank(A)

isequal(rank(Fs),l*rank(F))
isequal(rank(Rs),l*rank(R))

