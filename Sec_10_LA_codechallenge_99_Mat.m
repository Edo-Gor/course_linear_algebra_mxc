%% Code challenge from video 99

clear, clc

%%  Implement the MCA algorithm

% create matrix and check determinant
m = 5;
A = randn(m);
det(A)

% implement MCA; minors matrix
M = zeros(m);
for i = 1:m
    for j = 1:m
        Minor = A;
        Minor(i,:) = [];
        Minor(:,j) = [];
        
        M(i,j) = det(Minor);
    end
end

disp(M)

% cofactor matrix
H = ones(m).*(-1);
for i = 1:m
    for j = 1:m
        H(i,j) = (H(i,j))^(i+j);
    end
end

disp(H)

C = M.*H;
disp(C)

% adjugate matrix and inverse
A_inv_a = C'/det(A);
disp(A_inv_a)
disp(A*A_inv_a)

imagesc(A*A_inv_a)

% compute using inv() and compare
A_inv_b = inv(A);
disp(A_inv_b)
disp(A*A_inv_b)

diff = A_inv_a - A_inv_b;
disp(diff)

