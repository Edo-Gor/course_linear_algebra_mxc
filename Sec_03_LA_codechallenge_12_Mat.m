%% Code challenge from video 12

clear, clc

% create two 4x6 matrices of random number; 
% use a for loop to compute the dot product between corresponding columns

% define the matrices
n = 10;
A = randi(n,4,6);  % rand integers ranging 1:10
B = randi(n,4,6);

% compute the dot product between columns
c = zeros(size(A,2),1);
for i = 1:size(A,2)
    
    c(i) = dot(A(:,i),B(:,i));
    
end

disp(c);
