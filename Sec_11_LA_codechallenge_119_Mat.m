%% Code challenge from video 119

clear, clc

%% Demonstrate that A^TA = R^TR

% define A and compute QR decomposition
m = 5;
A = randn(m);

[Q,R] = qr(A);

% compute A^TA and R^TR
AtA = A'*A;
RtR = R'*R;

%% some plotting 

figure(1), clf
subplot(221);
imagesc(A);
axis image, axis off
title({'The matrix';'(m-by-m, m = 5)'});

subplot(222);
imagesc(R);
axis image, axis off
title({'R matrix';'from QR decomposition'});

subplot(223);
imagesc(AtA);
axis image, axis off
title({'A^TA'});

subplot(224);
imagesc(RtR);
axis image, axis off
title({'R^TR'});

