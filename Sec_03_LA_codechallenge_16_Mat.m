%% Code challenge from video 16

clear, clc

% 'demonstrate' in code the Cauchy-Schwartz inequality; both the inequality
% and the equality case.

%% Inequality

% the inequality is valid for all cases in which cos(theta) is not 1

a = [2, 6];
b = [7, 4];
plot([a(1) b(1)],[a(2) b(2)],'*')  % just quick and dirt
axis([0 8 0 8])

dp1 = abs(dot(a,b));
lp1 = norm(a)*norm(b);

ang1 = rad2deg(acos( dot(a,b) / (norm(a)*norm(b)) ));

diff1 = lp1 - dp1;
isineq = dp1 < lp1;
disp([diff1, isineq]);

%% Equality

% the equality is valid only when cos(theta) equals 1, besides the trivial
% case in which one of the vectors is zero, that is, when the vectors are
% collinear

c = [7, 7];
d = [2, 2];
plot([c(1) d(1)],[c(2) d(2)],'*')  % just quick and dirt
axis([0 8 0 8])

dp2 = abs(dot(c,d));
lp2 = norm(c)*norm(d);

ang2 = rad2deg(acos( dot(c,d) / (norm(c)*norm(d)) ));

diff2 = lp2 - dp2;
iseq = dp2 == lp2;
disp([diff2, iseq]);

%% Quiz 4

% Consider the following vectors. Without drawing the vectors on a graph, 
% determine which vector pairs meet at an obtuse angle?

a = [ 1 -2 ];
b = [ 2  3 ];
c = [ 0  2 ];

dot(a,b), dot(b,c), dot(c,a)

