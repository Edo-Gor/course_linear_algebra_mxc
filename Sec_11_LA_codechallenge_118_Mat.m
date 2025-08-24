%% Code challenge from video 118

clear, clc

%% Prove and demonstrate the Sherman-Morrison inverse

% vectors 
m = 5;
a = randn(m,1);
b = randn(m,1);

% matrix and inverse
A   = eye(m) - a*b';
inA = eye(m) + (a*b')/(1-a'*b);

test1 = A*inA;  % = (eye(m) - a*b')*(eye(m) + (a*b')/(1-a'*b))
test2 = A*inv(A);

% failure condition if a'b = 1
a2 = a/norm(a);
b2 = a2;

inA2 = eye(m) + (a2*b2')/(1-a2'*b2);
test3 = A*inA2;

%% some plotting

figure(1), clf
subplot(221);
imagesc(A);
axis image, axis off
title({'The matrix';'A = I - ab^T'});

subplot(222);
imagesc(inA);
axis image, axis off
title({'Sherman-Morrison inverse';'A^{-1} = I + (ab^T)/(1-a^Tb)'});

subplot(223);
imagesc(test1);
axis image, axis off
title({'AA^{-1}';'Sherman-Morrison inverse test'});

subplot(224);
imagesc(test2);
axis image, axis off
title({'AA^{-1}';'via inv() function'});


