%% Code challenge from video 65

clear, clc

%% Create reduced rank matrices using matrix multiplication

% you can usually just copy one column and repeat but it's not a flexible
% method; here we'll try other ways

% create a 10x10 matrix with rank = 4 via matrix multiplication
d = 10;
A = randn(d,4);
B = randn(4,d);

C = A*B;
rank(C)
size(C)

% generalise the procedure to any mxn matrix with rank r
r = randi(10,1,1); % limit to ranks up to 10
m = randi(20,1,1); % limit to matrices up to 20x20 for simplicity
n = randi(20,1,1);

if r > (m || n)     % just in case one of the dimensions is lower than the desired rank
    r = min(m,n);
end

D = randn(m,r);
E = randn(r,n);

F = D*E;
rank(F)
r

