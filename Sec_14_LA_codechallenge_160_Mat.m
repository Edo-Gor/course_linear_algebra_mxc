%% Code challenge from video 160

clear, clc

%% Why you avoid the inverse

% create a matrix with a known condition number
m = 10; n = m;
CondNum = 20;

[U,~] = qr(randn(m));
[V,~] = qr(randn(n));

s = linspace(CondNum,1,min(m,n));
S = diag(s);

A = U*S*V';

disp(cond(A));

% compute its explicit inverse via inv()
invA = inv(A);

% multiply A*A^-1 to get I
I = A*invA;

% compute the norm of the difference between I and eye()
diff_norm = norm(abs(I-eye(m)));
disp(diff_norm);

%% Extend
% repeat for matrices of size 2-70 and for condition number between 10 and
% 10^12 
MatSizes = 2:70;
CondNums = linspace(10,10e12,40);
norm_diff = zeros(length(MatSizes),length(CondNums));

for i = 1:length(MatSizes)
    for j = 1:length(CondNums)
        
        [U,~] = qr(randn(i));
        [V,~] = qr(randn(i));
        
        S = diag(linspace(CondNums(j),1,min(i)));
        
        A = U*S*V';
        I = A*inv(A);
        
        norm_diff(i,j) = norm(abs(I-eye(i)));
        
    end
end

disp('Max difference between theoretical I and empirical I:')
disp(max(norm_diff(:)))

% in short, for matrices with medium size and relatively high condition
% number, the inverse starts to become very unstable

%% Plotting 

figure(1), clf
pcolor(CondNums,MatSizes,norm_diff)
title('Difference between theoretical I and computed I')
subtitle('for matrices with increasing size and condition number')
xlabel('Condition numbers')
ylabel('Matrix sizes')
set(gca,'clim',[0,max(norm_diff(:))*.6])
colorbar




