%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Vectors
%      VIDEO: Vector length
% Instructor: sincxpress.com
% Course url: https://www.udemy.com/course/linear-algebra-theory-and-implementation/?couponCode=202110
%
%%
clear, clc

%%

v1 = [ 1 2 3 4 5 6 ];

% methods 1-4, just like with the regular dot product, e.g.:
vl = sqrt( sum(v1.*v1) );
vl = sqrt( sum(v1.^2) );
vl = sqrt( v1*v1' );

% method 5: take the norm (NOTE: don't sqrt() the norm ! )
vl = norm(v1);

disp(vl);
%% done.
