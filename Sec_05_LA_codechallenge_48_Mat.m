%% Code challenge from video 48

clear, clc

%% Pure and impure rotation matrices

% explore the relationship between vector magnitude, (im)pure rotation 
% matrix, and angle of the rotation

% define vector and angles
v = [ 3 -2 ];
theta = 0:pi/20:2*pi;

% for loop pure
pure = zeros(length(theta),length(v));
for i = 1:length(theta)
    A_p = [ cos(theta(1,i)) -sin(theta(1,i)); sin(theta(1,i)) cos(theta(1,i)) ];
    pure(i,:) = A_p*v';
end

% for loop impure
impure = zeros(length(theta),length(v));
for i = 1:length(theta)
    A_i = [ 2*cos(theta(1,i)) -sin(theta(1,i)); sin(theta(1,i)) cos(theta(1,i)) ];
    impure(i,:) = A_i*v';
end

% magnitudes of pure and impure output vectors
pure_mag = zeros(length(theta),1);
for i = 1:length(theta)
    pure_mag(i) = norm(pure(i,:));
end

impure_mag = zeros(length(theta),1);
for i = 1:length(theta)
    impure_mag(i) = norm(impure(i,:));
end

%% plot magnitudes by angles, pure and impure
figure(1), clf
plot(theta,pure_mag,'linew',2)
hold on
plot(theta,impure_mag,'linew',2)

grid on
legend({'Pure rotation';'Impure rotation'})
title('Output vector norm as function of the rotation matrix angle')
xlim([0,theta(end)])


