%% Code challenge from video 164

clear, clc

%% Visualize the normalized quadratic form

% compute and visualise the quadratic form for this matrix
A = [-2 3; 2 8];

n = 30;
wRange = linspace(-2,2,n);
[qf_raw,qf_nor] = deal(zeros(length(wRange),length(wRange))); % initialise simultaneously

for i = 1:n
    for j = 1:n
            
        w = [wRange(i) wRange(j)]';
            
        qf_raw(i,j) = w'*A*w;
        qf_nor(i,j) = qf_raw(i,j) / (w'*w);
        
    end
end
    


%% Plotting

figure(2), clf
subplot(121)
surf(wRange,wRange,qf_raw')
shading interp, axis square
set(gca,'fontsize',12,'clim',[-1 1]*max(abs(qf_raw(:)))*.6)
title('Non-normalised quadratic form')
xlabel('w_1'), ylabel('w_2'), zlabel('Energy')

subplot(122)
surf(wRange,wRange,qf_nor')
shading interp, axis square
set(gca,'fontsize',12,'clim',[-1 1]*max(abs(qf_nor(:)))*.6)
title('Normalised quadratic form')
xlabel('w_1'), ylabel('w_2'), zlabel('Energy')

colormap jet
rotate3d on


