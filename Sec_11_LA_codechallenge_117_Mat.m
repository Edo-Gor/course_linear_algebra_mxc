%% Code challenge from video 117

clear, clc

%% Inverse via QR

% generate a large (m=100) matrix and invert it via QR

% generate the matrix
m = 100;
A = randn(m);

% QR decomposition via qr()
[Q,R] = qr(A);

% inverse via QR trick and via inv()
InvA_1 = R\Q';  % which is the same as " inv(R)*Q' " (but more efficient)
InvA_2 = inv(A);

test_InvA_1 = InvA_1*A;
test_InvA_2 = InvA_2*A;

% you can also check the matching via matrix correlation
M = [InvA_1(:) InvA_2(:)];
C = corr(M);

%% some plotting 
figure(1), clf
subplot(231);
imagesc(A);
axis image, axis off
title({'The matrix';'(m-by-m, m = 100)'});

subplot(232);
imagesc(InvA_1);
axis image, axis off
title({'Inverse';'(via QR procedure)'});

subplot(233);
imagesc(InvA_2);
axis image, axis off
title({'Inverse';'(via inv() function)'});

subplot(234);
imagesc(M);
axis off
title({'Inverses comparison';'(2 cols but indistiguishable)'});

subplot(235);
imagesc(test_InvA_1);
axis image, axis off
title({'Test for above inverse';'(A^{-1}A)'});

subplot(236);
imagesc(test_InvA_2);
axis image, axis off
title({'Test for above inverse';'(A^{-1}A)'});

