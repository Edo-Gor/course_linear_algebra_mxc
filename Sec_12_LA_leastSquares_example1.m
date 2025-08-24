%%
%     COURSE: Linear algebra: theory and implementation
%    SECTION: Least-squares and statistics
%      VIDEO: Least-squares example 1
% Instructor: sincxpress.com
% Course url: https://www.udemy.com/course/linear-algebra-theory-and-implementation/?couponCode=202110
% 
%%
clear, clc

%% average value

% data
data = [ -4, 0, -3, 1, 2, 8, 5, 8 ]';
N    = length(data);

% design matrix
X = ones(N,1);

% fit the model
b = (X'*X)\(X'*data);

% compare against the mean
m = mean(data);

% compute the model-predicted values
yHat = X*b;

% plot data and model prediction
figure(3), clf
plot(1:N,data,'ks-','markerfacecolor','r','linew',2,'markersize',14)
hold on
plot(1:N,yHat,'ko--','markerfacecolor','b','linew',2,'markersize',14)

set(gca,'xlim',[.5 N+.5])
xlabel('Data point'), ylabel('Data value')
legend({'Observed data';'Predicted data'})

%% same as above but linear trend

% design matrix
X = (1:N)';

% fit the model
b = (X'*X)\(X'*data);

% compare against the mean
m = mean(data);

% compute the model-predicted values
yHat = X*b;

% plot data and model prediction
figure(4), clf
plot(1:N,data,'ks-','markerfacecolor','r','linew',2,'markersize',14)
hold on
plot(1:N,yHat,'ko--','markerfacecolor','b','linew',2,'markersize',14)

set(gca,'xlim',[.5 N+.5])
xlabel('Data point'), ylabel('Data value')
legend({'Observed data';'Predicted data'})

%% Now with an intercept and trend (slope)

% design matrix
X = [ ones(N,1) (1:N)' ];

% fit the model
b = (X'*X)\(X'*data);

% compare against the mean
m = mean(data);

% compute the model-predicted values
yHat = X*b;

% plot data and model prediction
figure(5), clf
plot(1:N,data,'ks-','markerfacecolor','r','linew',2,'markersize',14)
hold on
plot(1:N,yHat,'ko--','markerfacecolor','b','linew',2,'markersize',14)

set(gca,'xlim',[.5 N+.5])
xlabel('Data point'), ylabel('Data value')
legend({'Observed data';'Predicted data'})

%% Now with an intercept and trend (slope) and non linear terms

% design matrix with a non linear term
X = [ ones(N,1) (1:N)'.^2 ];

% fit the model
b = (X'*X)\(X'*data);

% compare against the mean
m = mean(data);

% compute the model-predicted values
yHat = X*b;

% plot data and model prediction
figure(6), clf
plot(1:N,data,'ks-','markerfacecolor','r','linew',2,'markersize',14)
hold on
plot(1:N,yHat,'ko--','markerfacecolor','b','linew',2,'markersize',14)

set(gca,'xlim',[.5 N+.5])
xlabel('Data point'), ylabel('Data value')
legend({'Observed data';'Predicted data'})

%% done.
