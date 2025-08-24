%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Matrix rank
%      VIDEO: Making a matrix full-rank by "shifting"
% Instructor: sincxpress.com
% Course url: https://www.udemy.com/course/linear-algebra-theory-and-implementation/?couponCode=202110
%
%%
clear, clc

%%

% size of matrix
m = 30;

% create the square symmetric matrix
A = randn(m);
A = round( 10*A'*A );
imagesc(A)
colormap jet

% reduce the rank
A(:,1) = A(:,2);
A(:,3) = A(:,2);
A(:,4) = A(:,2);

% shift amount (lambda)
l = .01;

% new matrix
B = A + l*eye(m);

disp([ 'rank(without shift)  = ' num2str(rank(A)) ])
disp([ 'rank(with shift) = ' num2str(rank(B)) ])

%% done.
