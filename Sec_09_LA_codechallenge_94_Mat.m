%% Code challenge from video 94

clear, clc

%% Determinant of matrix product

% illustrate that det(AB) = det(A)*det(B), i.e., that the associative
% property holds

% do it for a random 3x3 matrix
A = randn(3);
B = randn(3);

det(A*B)
det(A)*det(B)

% do it in a loop over matrices whose size goes up to 40
m = linspace(3,40,38);

det1 = zeros(1,length(m));
det2 = zeros(1,length(m));
    
for i = 2:length(m)
    A = randn(m(i));
    B = randn(m(i));
    det1(i) = det(A*B);
    det2(i) = det(A)*det(B);
end

diff = det1 - det2;
disp(diff)

%% plot looped dets
figure(1), clf
plot(det1,det2,'s-')
grid on
title('Graph showing that: det(AB) = det(A)*det(B)')
subtitle('I.e., the associative property holds for determinants')
xlabel('det(AB)')
ylabel('det(A)*det(B)')

figure(2), clf
plot(m,det1-det2,'s-')
grid on
title('det(AB) - det(A)*det(B) for various matrix sizes')
subtitle('Matrix sizes: 3 up to 40')
xlabel('Matrix size')
ylabel('det(AB) - det(A)*det(B)')

% notice however how wild is the computation of the determinant in
% practical terms; for matrices larger than >
