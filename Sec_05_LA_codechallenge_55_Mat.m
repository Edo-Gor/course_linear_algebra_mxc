%% Code challenge from video 55

clear, clc

%% Standard and Hadamard multiplication for diagonal matrices

% create 2 square matrices; a full one and a diagonal one
n = 20;
A = randi(n,4,4);
d = randi(n,4,1);
B = diag(d);

% multiply each matrix by itself (standard)
StA = A * A
StB = B * B

% multiply each matrix by itself (Hadamard)
HaA = A .* A
HaB = B .* B
