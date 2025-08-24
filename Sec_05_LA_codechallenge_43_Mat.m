%% Code challenge from video 43

clear, clc

%% Matrix multiplication by layering 

% generate 2 matrices

n = 20;
A = randi(n,3,4);
B = randi(n,4,5);

% build the product matrix layer-wise (for loop)

layer1 = zeros(size(A,1),size(B,2));
for i = 1:size(A,1)
    for j = 1:size(B,2)
        layer1(i,j) = A(i,1)*B(1,j);
    end
end

layer2 = zeros(size(A,1),size(B,2));
for i = 1:size(A,1)
    for j = 1:size(B,2)
        layer2(i,j) = A(i,2)*B(2,j);
    end
end   

layer3 = zeros(size(A,1),size(B,2));
for i = 1:size(A,1)
    for j = 1:size(B,2)
        layer3(i,j) = A(i,3)*B(3,j);
    end
end   

layer4 = zeros(size(A,1),size(B,2));
for i = 1:size(A,1)
    for j = 1:size(B,2)
        layer4(i,j) = A(i,4)*B(4,j);
    end
end   
    
P1 = layer1 + layer2 + layer3 + layer4;

% implement the product directly and compare the results

P2 = A*B;
disp(P1), disp(' '), 
disp(P2), disp(' ')

%% More efficiently (outer product)

n = 20; m = 3; k = 5;
A = randi(n,m,4);
B = randi(n,4,k);

P1 = zeros(m,k);
for i = 1:size(A,2)  % loop over the inner layer
    P1 = P1 + A(:,i)*B(i,:);
end

P2 = A*B;
disp(P1), disp(' '), 
disp(P2), disp(' ')

