%% Code challenge from video 93

clear, clc

%% Determinant of shifted matrices

% generate a square random matrix (30x30); impose linear dependencies
m = 30;

% shift the matrix for 0:0.1 times the size of the matrix
lambda = linspace(0,0.1,m);

% compute the determinant (just the absolute value); repeat 1000 times for
% each shifting parameter and take the average of the abs(det)
det_M = zeros(1,m);

for i = 1:length(lambda)
    tempdet_M = zeros(1,1000);
    for j = 1:1000
        M = randn(m);
        M(2,:) = M(1,:);
        M = M + eye(m)*lambda(i);
        tempdet_M(j) = abs(det(M));
    end
    det_M(i) = mean(tempdet_M);
end

%% plot the determinants by the shifting parameter
figure(1), clf
plot(lambda,det_M,'s-');
grid on
title('Determinant of shifted matrices (m = 30)')
subtitle('Shifting parameter: \lambda = linspace(0,0.1,m)')
xlabel('\lambda parameter')
ylabel('Determinant abs(value)')

% so basically as you shift more and more the determinant increases

