%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Vectors
%      VIDEO: Span
% Instructor: sincxpress.com
% Course url: https://www.udemy.com/course/linear-algebra-theory-and-implementation/?couponCode=202110
%
%% 
clear, clc

%%

% set S
S = [ [1 1 0]' [1 7 0]' ]; 

% vectors v and w
v = [1 2 0]';
w = [3 2 1]';


figure(1), clf, hold on
plot3([0 S(1,1)],[0 S(2,1)],[0 S(3,1)],'g','linew',3)
plot3([0 S(1,2)],[0 S(2,2)],[0 S(3,2)],'g','linew',3)

plot3([0 v(1)],[0 v(2)],[0 v(3)],'k','linew',3)
plot3([0 w(1)],[0 w(2)],[0 w(3)],'b','linew',3)

% draw the plane spanned by S (use cross prod to define the plane)
normvec = cross(S(:,1),S(:,2));
[X,Y] = meshgrid(-4:4,-4:4);
z = -(normvec(1)*X + normvec(2)*Y)/normvec(3);
surf(X,Y,z)
shading interp

axis square
grid on, rotate3d on

%% Quiz 5

% set A
%S = [ [1 2 4]' [3 2 5]' ];
% set B
S = [ [2 6 -3]' [0 -2 9]' ];

% vectors v and w
v = [1 2 3]';


figure(2), clf, hold on
plot3([0 S(1,1)],[0 S(2,1)],[0 S(3,1)],'g','linew',3)
plot3([0 S(1,2)],[0 S(2,2)],[0 S(3,2)],'g','linew',3)

plot3([0 v(1)],[0 v(2)],[0 v(3)],'k','linew',3)

% draw the plane spanned by S (use cross prod to define the plane)
normvec = cross(S(:,1),S(:,2));
[X,Y] = meshgrid(-4:4,-4:4);
z = -(normvec(1)*X + normvec(2)*Y)/normvec(3);
surf(X,Y,z)
shading interp

axis square
grid on, rotate3d on

%% done.
