%% Code challenge from video 119

clear, clc

%% Least-squares via QR decomposition

% generate some random data ('design matrix X' and 'data vector y')
m = 20;
n = 3;

X = randn(m,n);
y = randn(m,1);

[Q,R] = qr(X);

R_inv = (R'*R)\R';

beta = R_inv *Q' * y;

% compare results from QR decomposition to left-inverse approach

beta_test = (X'*X)\(X'*y);

disp(beta)
disp(' ')
disp(beta_test)

% yet another way to boil the problem down to QR decomposition

beta2 = (R'*R) \ (Q*R)'*y ;

disp(beta)
disp(' ')
disp(beta_test)
disp(' ')
disp(beta2)
