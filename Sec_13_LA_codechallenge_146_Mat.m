%% Code challenge from video 146

clear, clc

%% GED in small and large matrices
% the aim is to test whether Sv = lRv and R{-1}Sv = lv give the same
% eigvals and eigvecs in the realm of actual computations (i.e., whether
% beyond the theory, computers can deal with the numerical uncertainties)

% part 1 : GED on 2x2 matrices
A = randn(2);
B = randn(2);

[eigvecs1,eigvals1] = eig(A,B);
[eigvecs2,eigvals2] = eig(B\A);

% part 1 : plot eigvecs

figure(1), clf
plot([0,eigvecs1(1,1)], [0,eigvecs1(2,1)],'r','LineWidth',2);
hold on
plot([0,eigvecs1(1,2)], [0,eigvecs1(2,2)],'b','LineWidth',2);
plot([0,eigvecs2(1,1)], [0,eigvecs2(2,1)],'g','LineWidth',2);
plot([0,eigvecs2(1,2)], [0,eigvecs2(2,2)],'m','LineWidth',2);
xlabel('X');
ylabel('Y');
title('Eigenvectors for eig(A,B) and eig(B\A)');
legend('Eigenvector 1 (eig(A,B))', 'Eigenvector 2 (eig(A,B))', 'Eigenvector 1 (eig(B\A))', 'Eigenvector 2 (eig(B\A))');
axis square
grid on
margin = 0.1; % Additional space
xlim([min([0,eigvecs1(1,:), eigvecs2(1,:)]) - margin, max([0,eigvecs1(1,:), eigvecs2(1,:)]) + margin]);
ylim([min([0,eigvecs1(2,:), eigvecs2(2,:)]) - margin, max([0,eigvecs1(2,:), eigvecs2(2,:)]) + margin]);

% part 2 : GED on actual large data
load real_matrices.mat

[eigvecs3,eigvals3] = eig(S,R);
[eigvecs4,eigvals4] = eig(R\S);

% part 2 : plot eigvals
figure(2), clf
plot(diag(eigvals3),'s-');
hold on
plot(diag(eigvals4),'s-');
title('Eigenvectors for eig(S,R) and eig(R\S)');
xlabel('eigvals index');
ylabel('eigvals');



