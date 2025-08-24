%% Code challenge from video 70

clear, clc

%% Is this vector in teh span of this set?

% here we'll see how to determine whether a vector is in the span of a
% matrix, or, better, in the span of a set of column vectors

% the vector
v = [1 2 3 4]';

% the sets
S = [ [4 3 6 2]' [0 4 0 1]' ];
T = [ [1 2 2 2]' [0 0 1 2]' ];

% if v is in the span of either S or T then putting v in these sets should
% not increase their rank (gemetrically it means v does not expand the 
% dimentionality of the space spanned by either S or T, for ex., if it's a
% plane in 4D and it remains a plane, than v it's in the span of S or T)

rank(S), rank(T)

Sp = [S v]; Tp = [T v];

rank(Sp), rank(Tp)

% conclusion: v is not in the span of S but is in the span of T

