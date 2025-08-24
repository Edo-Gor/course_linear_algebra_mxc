%% Code challenge from video 106

clear, clc

%% Pseudoinverse of invertible matrices

% given a full rank square matrix, are the true and the pseudoinverse the
% same? 

% create random full matrix
n = 25;
A = randn(n);

% compute the inverse
invA = inv(A);

% compute the pseudoinverse
pseudoinvA = pinv(A);


% and show the matrices
figure(5), clf
subplot(231), imagesc(A), axis square, axis off
title('A'), set(gca,'fontsize',20)

subplot(232), imagesc(invA), axis square, axis off
title('A^{-1}'), set(gca,'fontsize',20)

subplot(233), imagesc(pseudoinvA), axis square, axis off
title('A^*'), set(gca,'fontsize',20)

subplot(234), imagesc(A*invA), axis square, axis off
title('AA^{-1}'), set(gca,'fontsize',20)

subplot(235), imagesc(A*pseudoinvA), axis square, axis off
title('AA^*'), set(gca,'fontsize',20)

subplot(236), imagesc(pseudoinvA*A), axis square, axis off
title('A^*A'), set(gca,'fontsize',20)

% answer: yep
