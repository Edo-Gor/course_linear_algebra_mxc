%% Code challenge from video 101

clear, clc

%%  Inverse of a diagonal matrix

% diagonal matrices' inverses have interesting features; start by creating
% a diagonal matrix, 2x2 with integers, then work up to larger sizes
m = 10;
A2 = diag(randi(m,2,1)-1);  % -1 to set some 0s on the diagonal
A3 = diag(randi(m,3,1)-1);
A5 = diag(randi(m,5,1)-1);
A8 = diag(randi(m,8,1)-1);

% compute their inverses
invA2 = inv(A2);
disp(A2), disp(' '), disp(invA2), disp(' '), disp(' ')

invA3 = inv(A3);
disp(A3), disp(' '), disp(invA3), disp(' '), disp(' ')

invA5 = inv(A5);
disp(A5), disp(' '), disp(invA5), disp(' '), disp(' ')

invA8 = inv(A8);
disp(A8), disp(' '), disp(invA8), disp(' '), disp(' ')


% what condition must be imposed on the diagonal for invertibility?
% > non-zero elements on diagonal otherwise not full-rank
% > also, inverse is a diagonal matrix with the inverse of the element in
%   the corresponding position (awesome!)

