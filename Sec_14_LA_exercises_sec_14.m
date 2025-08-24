%% Code for exercises from section 14

% Write MATLAB or Python code to implement the following experiment.

clear, clc

%% 1. Generate a 2 × 3 matrix of random numbers
n = 2;
m = 3;
A = randn(n,m);

%% 2. Compute its SVD
[U,S,V] = svd(A);

%% 3. Compute two eigendecompositions using the matrix and its transpose
[V1,D1] = eig(A*A');
[V2,D2] = eig(A'*A);

%% 4. Confirm that the two sets of eigenvalues match, and check whether the eigenvalues match the singular values
disp(V1)
disp(U)
disp(' ')
disp(V2)
disp(V)
disp(' ')

%% 5. Plot the eigenvectors and singular vectors in 2D or 3D (as appropriate) to confirm that SVD and transpose+eigendecomposition produce the same eigenspaces

figure(1), clf
subplot(121), hold on
plot([0 U(1,1)],[0 U(2,1)],'r','linew',3)
plot([0 U(1,2)],[0 U(2,2)],'k','linew',3)
plot([0 V1(1,1)],[0 V1(2,1)],'r--','linew',3)
plot([0 V1(1,2)],[0 V1(2,2)],'k--','linew',3)
axis([-1 1 -1 1]*1.5), grid on, axis square

subplot(122), hold on
plot3([0 V(1,1)],[0 V(2,1)],[0 V(3,1)],'r','linew',3)
plot3([0 V(1,2)],[0 V(2,2)],[0 V(3,2)],'k','linew',3)
plot3([0 V(1,3)],[0 V(2,3)],[0 V(3,3)],'b','linew',3)
plot3([0 V2(1,1)],[0 V2(2,1)],[0 V2(3,1)],'r--','linew',3)
plot3([0 V2(1,2)],[0 V2(2,2)],[0 V2(3,2)],'k--','linew',3)
plot3([0 V2(1,3)],[0 V2(2,3)],[0 V2(3,3)],'b--','linew',3)
axis([-1 1 -1 1 -1 1]*1.5), grid on, axis square
rotate3d on






