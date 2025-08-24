%% Code challenge from video 150

clear, clc

%% U from eigendecomposition of A^TA

% create a 3x6 matrix
n = 3; m = 6;
A = randn(n,m);

% full SVD of A (Us Ss Vs)
[Us, Ss, Vs] = svd(A);

% eig of A'A (V L)
[V, L] = eig(A'*A);
[l, indx] = sort(diag(L),'descend');
L = diag(l);
V = V(:,indx);

% confirm that V == Vs
disp(V)
disp(' ')
disp(Vs)
disp(' ')

% check relationship between Ss and L
disp(Ss.^2)
disp(' ')
disp(L)
disp(' ')

% create U using only A, V and L (u(i) = AVs(i)/Ss(ii))
U = zeros(n);

for i = 1:n 
    U(:,i) = A*V(:,i) / sqrt(L(i,i));
end

% confirm that U == Us
disp(Us)
disp(' ')
disp(U)
disp(' ')



