%% Code challenge from video 142

clear, clc

%% Reconstruct a matrix from eigenlayers

% start by creating a square (5x5) symmetric matrix (for convenience since
% you'll have V'=inv(V))
n = 5;
A = randn(n);
A = A*A';

% take the eigendecomposition
[eigvecs, eigvals] = eig(A);

% show that that the norm of each column in V is 1
eigvecs_norm = eigvecs * eigvecs';

% create one layer of A as product of l(ii), v(:i) and v'(i:), and compute
% its norm; sort the eigenvalues/vectors before starting
[eigvals,indx] = sort(diag(eigvals),'descend');
eigvecs = eigvecs(:,indx);

layer1 = eigvals(1) * eigvecs(:,1) * eigvecs(:,1)'; 

% reconstruct the original matrix by summing all the layers 
lay = zeros(n,n);
Ar  = zeros(n,n);
for i = 1:n
    
    lay = eigvals(i) * eigvecs(:,i) * eigvecs(:,i)'; 
    Ar = Ar + lay;
    
end

test = A - Ar; 
disp(' ')
disp(test)
disp(' ')

% show that the norm of the outer product of each layer is the eigenvalue
outer_norm = diag(eigvals) * eigvecs_norm;

%% ploting

% plot example of layer 1, the reconstructed matrix, and the original
% matrix
figure(1), clf
subplot(131), imagesc(layer1)
axis square, axis off
title('First layer of A (higher eigvals)')

subplot(132), imagesc(Ar)
axis square, axis off
title('Reconstructed A')

subplot(133), imagesc(A)
axis square, axis off
title('Original A')



