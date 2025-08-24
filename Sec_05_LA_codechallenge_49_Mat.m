%% Code challenge from video 49

clear, clc

%% Geometric transformation via matrix multiplication

% create the coordinates for a circle (use the trigonometric way)
th = 0:pi/50:2*pi;
cx = sin(th);
cy = cos(th);

% plot the circle
figure(1), clf
plot(cx,cy,'o')
grid on
axis([-4,4,-4,4],'square')
title('Geometric transformation via matrix multiplication')

% create a 2 x 2 matrix starting from I
iden = eye(2);
mat1 = [3 1; 
        1 3];

% multiply matrix by coordinates (also with I to check)
coord = [cx; cy];

newcoord_0 = (iden*coord)'; 
newcoord_1 = (mat1*coord)';

% plot new coordinates
figure(1), hold on
plot(newcoord_0(:,1),newcoord_0(:,2),'*')
plot(newcoord_1(:,1),newcoord_1(:,2),'o')

% try new matrices
mat2 = [-1 2; 
        pi 2];
newcoord_2 = (mat2*coord)';

plot(newcoord_2(:,1),newcoord_2(:,2),'o')

% try with a singular matrix (a matrix with a colum that is a scaled version of another column)
mat3 = [-1 -2; 
         1  2];
newcoord_3 = (mat3*coord)';

plot(newcoord_3(:,1),newcoord_3(:,2),'o')

% other matrices just for fun
mat4 = [1 2.2; 
        3 -1];
newcoord_4 = (mat4*coord)';

plot(newcoord_4(:,1),newcoord_4(:,2),'o')

mat5 = [-1.5 2.5; 
        3.2  -1];
newcoord_5 = (mat5*coord)';

plot(newcoord_5(:,1),newcoord_5(:,2),'o')



