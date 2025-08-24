%% Code challenge from video 59

clear, clc

%% Conditions for self-adjoint

n = 20;
A = randi(n,4,4); Id = 3*eye(4); Zr = zeros(4); As = A'*A;
v = randi(n,4,1); 
w = randi(n,4,1);

% full matrix
dot((A*v),w)
dot(v,(A*w))

% I (scaled) matrix
dot((Id*v),w)
dot(v,(Id*w))

% zero matrix matrix
dot((Zr*v),w)
dot(v,(Zr*w))

% symmetric matrix
dot((As*v),w)
dot(v,(As*w))
