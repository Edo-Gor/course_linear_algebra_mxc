%% Code challenge from video 148

clear, clc

%% SVD vs. eigendecomposition for square symmetric matrices

% compute a symmetric matrix (5x5)
n = 5;
A = randn(5);
A = A*A';

% compute the EIG (W,L), and rearrange in descending order to match SVD
[W,L] = eig(A);

[d,sidx] = sort(diag(L),'descend');
W = W(:,sidx);
L = diag(d);


% compute the SVD (U,S,V)
[U,S,V] = svd(A);

% compare U and V, and U and W
disp([U,V])
disp(' ')
disp([U,W])

%% plot 
% plot all matrices
figure(1), clf
subplot(231), imagesc(A)
axis square, axis off
title('Original matrix A (symmteric)')

subplot(232), imagesc(abs(W))
axis square, axis off
title('Eigenvectors of A')

subplot(233), imagesc(L)
axis square, axis off
title('Eigenvalues of A')

subplot(234), imagesc(abs(U))
axis square, axis off
title('SVD: matrix U')

subplot(235), imagesc(abs(V))
axis square, axis off
title('SVD: matrix V')

subplot(236), imagesc(S)
axis square, axis off
title('SVD: matrix S')

