%% Code challenge from video 115

clear, clc

%% Gram-Schmidt algorithm

% implement the G-S procedure in code!

% start with a square matrix but make it flexible
m = 4; 
n = 4;
A = randn(m);

% compute Q via G-S
Q = zeros(m,n);

for i = 1:n  % loop over columns
    
    Q(:,i) = A(:,i);
    a = A(:,i);
    
    % orthogonalise columns of Q to previous columns 
    for j = 1:i-1  % loop on all the cols previous to the ith col 
        q = Q(:,j);
        Q(:,i) = Q(:,i) - ((a'*q)/(q'*q))*q;
    end
    
    % normalise colums by 1/length(col)
    Q(:,i) = Q(:,i)/norm(Q(:,i));
    
end

% check that actually Q'Q = I
test = Q'*Q;
disp(test)
disp(' ')

% chech that our Q is the same as the qr() function (you might find instability in the sines)
[Q2, R] = qr(A);
disp(Q)
disp(' ')
disp(Q2)

%% plot
figure(1), clf
subplot(131);
imagesc(abs(Q));
axis image, axis off
title({'The hand-made Q';'(absolute values plotted to overcome sine instability)'});

subplot(132);
imagesc(abs(Q2));
axis image, axis off
title({'The qr() Q';'(absolute values plotted to overcome sine instability)'});

subplot(133);
imagesc(test);
axis image, axis off
title('Q^TQ');
title({'Q^TQ';'(hand-made version)'});


