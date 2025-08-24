%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Vectors
%      VIDEO: Hermitian transpose (a.k.a. conjugate transpose)
% Instructor: sincxpress.com
% Course url: https://www.udemy.com/course/linear-algebra-theory-and-implementation/?couponCode=202110
%
%%
clear, clc

%%

% create a complex number
z = complex(3,4);

% magnitude
norm(z)

% by transpose?
transpose(z)*z

% by Hermitian transpose; NOTE: z' represent the Hermitian transpose in
% MatLab, but of course when applied to real value it acts as a standard
% transpose; the MatLab notation for the standard tanspose is z.' (see
% below)
z'*z

% not the Hermitian:
z.'*z



% complex vector
v = [ 3 4i 5+2i complex(2,-5) ];
v'
v.'
transpose(v)

%% done.
