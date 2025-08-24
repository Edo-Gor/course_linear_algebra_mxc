%% Code challenge from video 132

clear, clc

%% Eigenvalues of random matrices

% generate a fairly large random matrix (40x40), compute eigenvalues and
% plot them 
n = 40;
A = randn(n);
eigvals = eig(A);

figure(1), clf
plot(real(eigvals),imag(eigvals),'o')
title('Eigenvalues of a random 40x40 matrix')
xlabel('Real part')
ylabel('Imaginary part')
axis square
grid on

%% repeat a lot of times for a lot of matrices, plot all the eigenvalues in the same plot

for i = 1:100
    A = randn(n);
    eigvals = eig(A);

    figure(2)
    plot(real(eigvals),imag(eigvals),'o')
    hold on
end

title('Eigenvalues of 100 random 40x40 matrices')
xlabel('Real part')
ylabel('Imaginary part')
axis square
grid on

% In short, large matrices will easily have complex-valued eigenvalues,
% this is not guaranteed tough, and that's the reason why there is a line
% in the plot with a high density of real-valued eigenvalues

% also notice that if there are complex values, then each complex
% eigenvalue has going to have a mirror copy flipped around the real axis,
% in other words, if you get a complex eigval, you also get its conjugate



