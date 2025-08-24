%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Vectors
%      VIDEO: Vector-scalar multiplication
% Instructor: sincxpress.com
% Course url: https://www.udemy.com/course/linear-algebra-theory-and-implementation/?couponCode=202110
%
%%
clear, clc

%%

v1 = [ 3 -1 ];
l  = 1.2;

% plot them
figure(1), clf
subplot(131)

% the main plotting lines:
plot([0 v1(1)],[0 v1(2)],'b','linew',3)
hold on
plot([0 v1(1)]*l,[0 v1(2)]*l,'r:','linew',2)
legend({'v1';'v2'},'AutoUpdate','off')
title('\lambda > 1')

% this code just makes the plot look nicer
axis square
axis([ -1 1 -1 1 ]*max([norm(v1) norm(v1*l)]))
hold on
plot(get(gca,'xlim'),[0 0],'k--')
plot([0 0],get(gca,'ylim'),'k--')
xlabel('X_1 dimension')
ylabel('X_2 dimension')


l = .4;
subplot(132)
plot([0 v1(1)],[0 v1(2)],'b','linew',3)
hold on
plot([0 v1(1)]*l,[0 v1(2)]*l,'r:','linew',2)
legend({'v1';'v2'},'AutoUpdate','off')
title('\lambda \in (0,1)')

% this code just makes the plot look nicer
axis square
axis([ -1 1 -1 1 ]*max([norm(v1) norm(v1*l)]))
hold on
plot(get(gca,'xlim'),[0 0],'k--')
plot([0 0],get(gca,'ylim'),'k--')
xlabel('X_1 dimension')
ylabel('X_2 dimension')


l = -.4;
subplot(133)
plot([0 v1(1)],[0 v1(2)],'b','linew',3)
hold on
plot([0 v1(1)]*l,[0 v1(2)]*l,'r:','linew',2)
legend({'v1';'v2'},'AutoUpdate','off')
title('\lambda < 0')

% this code just makes the plot look nicer
axis square
axis([ -1 1 -1 1 ]*max([norm(v1) norm(v1*l)]))
hold on
plot(get(gca,'xlim'),[0 0],'k--')
plot([0 0],get(gca,'ylim'),'k--')
xlabel('X_1 dimension')
ylabel('X_2 dimension')



%% done.
