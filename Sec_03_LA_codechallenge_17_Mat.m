%% Code challenge from video 17

clear, clc

%% test whether the dot product is invariant to scalar multiplication
% it's not a demonstration but a 'soft proof'

% generate two vectors in R3 and two scalars

a = rand(1,3);
b = rand(1,3);

j = randi(10,1);
k = randi(10,1);

dot(a,b)
dot((a*j),(b*k))

% the dot product is not invariant to scalar multiplication, unless the
% vectors are orthogonal to each other, in that case it's zero so you can
% scale up as much as you want, but it's staying zero:

v1 = [2 2];
v2 = [-2 2];

s1 = 3; 
s2 = 4;

disp(' ')
disp([ 'Original: ' num2str(dot(v1,v2)) ])
disp([ 'Scaled: ' num2str(dot(v1*s1,v2*s2)) ])

% notably, the original dp is scaled up by a factor that is the product of
% the scalars that scaled the original vectors; so here if it weren't zero
% the dp would be scaled of 3*4=12
