%% Code challenge from video 144

clear, clc

%% Trace and determinant, eigenvalues sum and product

% set a full rank square matrix and a reduced rank square matrix
n = 5;
A = randn(n);
B = randn(n);
B(:,2) = B(:,1);

% explore the fact that tr(A) = sum(evals)
evalsA = eig(A);
evalsB = eig(B);

trA = trace(A);
trB = trace(B);

sum_evalsA = sum(evalsA);
sum_evalsB = sum(evalsB);

test_trA = trA - sum_evalsA;
test_trB = trB - sum_evalsB;

disp(' ')
disp(test_trA)
disp(' ')
disp(test_trB)
disp(' ')

% explore the fact that det(A) = prod(evals)
detA = det(A);
detB = det(B);

prod_evalsA = prod(evalsA);
prod_evalsB = prod(evalsB);

test_detA = detA - prod_evalsA;
test_detB = detB - prod_evalsB;

disp(' ')
disp(test_detA)
disp(' ')
disp(test_detB)
disp(' ')



