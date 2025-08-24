%% Code challenge from video 68

clear, clc

%% Rank of multiplied and summed matrices

% keep in mind that:
%     rank(AB)  <=  min{rank(A), rank(B)}
%     rank(A+B) <=  rank(A) + rank(B)

% generate two matrices, A and B, rectangular, 2x5
A = randi(25,2,5);
B = randi(25,2,5);

% compute AtA and BtB
AtA = A'*A;
BtB = B'*B;

% compute rank A and B
rank(A)
rank(B)

% compute rank AtA and BtB
rank(AtA)
rank(BtB)

% think about and then compute the rank of AtA * BtB (should be <=2)
rank(AtA*BtB)

% think about and then compute the rank of AtA + BtB (should be <=4)
rank(AtA+BtB)



