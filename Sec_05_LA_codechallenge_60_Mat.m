%% Code challenge from video 60

clear, clc

%% The matrix symmetry index

% implement the matrix asymmetry index MaI in code
n = 20;
M = randi(n,4,4);  % of course square

S1 = (M+M')./2;    % symmetric
A1 = (M-M')./2;    % asymmetric (skew)

S1_p = (S1-S1')./2;
A1_p = (A1-A1')./2;
M_p  = (M -M' )./2;

% test MaI on symmetric matrix
MaI1 = norm(S1_p,'fro')/norm(S1,'fro');
fprintf('The MaI of a symmetric matrix is: %d.\n',MaI1);

% test MaI on skew-symmetric matrix (also called asymmetric)
MaI2 = norm(A1_p,'fro')/norm(A1,'fro');
fprintf('The MaI of a skew-symmetric (or asymmetric) matrix is: %d.\n',MaI2);

% test MaI on random full matrix
MaI3 = norm(M_p,'fro')/norm(M,'fro');
fprintf('The MaI of a random full matrix varies bewteen 0 and 1: %d.\n',MaI3);

% develop a formula to proportionally mix a symmetric and a skew-symmetric
% matrix (i.e. to go from the MaI to a matrix, for various values of MaI)

    % set a MaI parameter
    p = 1;
    % use the parameter to scale the sum of a symmetric and of an
    % asymmetric matrix; if p=1 the symmetric part is cancelled out and it
    % remains only the asymmetric one, if P=0 it's the other way around
    A_m = (1-p)*(M+M') + p*(M-M');

%% confirm the above formula by using random matrices variable over time

    % set a range of empirical proportions and prealloc MaIs
    Props = 0:0.01:1;
    MaIs = zeros(length(Props),1);
    
    % create matrices with a variable index of asymmetry (new random M each time)
    for i = 1:length(Props)
        M = randi(n,4,4);
        A_mixed = (1-Props(i))*(M+M') + Props(i)*(M-M');
        MaIs(i,1) = norm(((A_mixed-A_mixed')./2),'fro')/norm(A_mixed,'fro');
    end

    % plot
    figure(1), clf
    subplot(121)
    plot(Props,MaIs,'o-')
    xlabel('Linearly spaced proportions')
    ylabel('Empirical MaIs over random matrices')
    title('Variable Matrices Asimmetry Indices')
    subtitle('Matrices size: 4x4')
    
%% confirm the above formula by using same random matrix

    % set a range of empirical proportions, prealloc MaIs and set M
    Props = 0:0.01:1;
    MaIs = zeros(length(Props),1);
    M = randi(n,4,4);
    
    % create matrices with a variable index of asymmetry (fixed M)
    for i = 1:length(Props)
        A_mixed = (1-Props(i))*(M+M') + Props(i)*(M-M');
        MaIs(i,1) = norm(((A_mixed-A_mixed')./2),'fro')/norm(A_mixed,'fro');
    end

    % plot
    figure(1)
    subplot(122)
    plot(Props,MaIs,'o-')
    xlabel('Linearly spaced proportions')
    ylabel('Empirical MaIs over a single random matrix')
    title('Variable Matrix Asimmetry Indices')
    subtitle('Matrix size: 4x4')
    
