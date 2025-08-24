%% Code challenge from video 111

clear, clc

%% Decompose vector to orthogonal components

% vector to be decomposed
w = [2 3]';

% vector reference
v = [4 0]';

% compute w|| 
wPar = ((w'*v)/(v'*v)) * v;

% compute w-|
wOrt = w - wPar;

% confirm results algebraically (sum of components equals w)
wTest = wPar + wOrt;

% confirm orthogonality (dot prod)
isOrt = wPar' * wOrt;

% pot the four vectors 
figure(1), clf
hold on
grid on

plot([0 w(1)], [0 w(2)], 'LineWidth', 2);
plot([0 v(1)], [0 v(2)], 'LineWidth', 2);

plot([0 wPar(1)], [0 wPar(2)], '--', 'LineWidth', 2);
plot([0 wOrt(1)], [0 wOrt(2)], '--', 'LineWidth', 2);

axis equal
xlim([-1 5]);
ylim([-1 5]);
xlabel('x');
ylabel('y');
title('2D Plot of Vectors');
legend('w', 'v', 'wPar', 'wOrt');
