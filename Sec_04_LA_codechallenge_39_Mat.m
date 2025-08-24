%% Code challenge from video 39

clear, clc

%% The linearity of trace (i.e. closed under addition and scalar multiplication)

% determine the relationship between tr(A) + tr(B) and tr(A+B)
% determine the relationship between tr(s*A) and s*tr(A)

% create matrices and scalar
n = 20;
s = randi(n);
A = randi(n,5,5); % must be square here
B = randi(n,5,5);

% step 1 : distributive property
sum1 = trace(A) + trace(B);
sum2 = trace(A+B);

isequal = sum1 == sum2;
disp(isequal)

% step 2 : commutative property
prod1 = trace(s*A);
prod2 = s*trace(A);

isequal2 = prod1 == prod2;
disp(isequal2)

% yes the trace is a linear operation 