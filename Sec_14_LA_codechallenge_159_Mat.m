%% Code challenge from video 159

clear, clc

%% Create matrix with desired condition number

% create a random matrix with a specified condition number, let's say 42

m = 30; n = 40;
A = randn(m,n);
[U,S,V] = svd(A);
CondNum = cond(A);

newS = S;
newS(1,1) = S(m,m)*42;

newA = U*newS*V';

disp(cond(newA));

%% Plotting

figure(1), clf
subplot(221), imagesc(A)
axis square, axis off
title('Original matrix A')

subplot(222), imagesc(S)
axis square, axis off
title('Matrix S for A')

subplot(223), imagesc(newA)
axis square, axis off
title('New matrix A with specified k = 42')

subplot(224), imagesc(newS)
axis square, axis off
title('Matrix S for new A')

%% Alternative solution 

m = 10; n = 20;

CondNum = 16;

[U,~] = qr(randn(m));
[V,~] = qr(randn(n));

s = linspace(CondNum,1,min(m,n));
S = zeros(m,n);
for i = 1:m
    S(i,i) = s(i);
end

A = U*S*V';

disp(cond(A));

