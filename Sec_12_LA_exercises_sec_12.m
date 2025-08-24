%% Code for exercises from section 12

% Imagine you work as a data analyst in a company that sells widgets online. The company gives you a
% dataset of information from 1000 sales, which includes the time of the sale (listed in hours of the day
% using a 24-hour clock, e.g., 15 = 3pm), the age of the buyer (in years), and the number of widgets
% sold. The data are included in the ”widget data.mat” file.

clear, clc

%% 0. Load the data
load widget_data.mat

%% 1. Explain and write down a mathematical model that is appropriate to test with this dataset

% A reasonable question to test is whether age and time of the day can
% affect the number of purchased items; the model equation should therefore
% be the following: 

%       y = b0 + b1*t + b2*a

% where y is the number of sold items, t is the time of the day, and a is
% the age of the coustomer; b0 is the intercept

%% 2. Write the matrix equation corresponding to the model, and describe the columns in the design matrix

%       y = Xb

% where X contain two columns, age and time, y is a vector with the sold
% items and b is the vector we need to solve for

y = data(3,:)';    % sold items
n = length(data(1,:));
X = [ones(n,1) data(1:2,:)'];  % col 2 is time; col 3 is age

%% 3. Compute the model coefficients using the least-squares algorithm in MATLAB or Python
% You can also divide the beta coefficients by the standard deviations of the corresponding independent
% variables, which puts the various model terms in the same scale and therefore more comparable.

% you can solve in various ways; here use the left-inverse approach
b = (X'*X)\(X'*y);

% normalise the b
stdTime = std(X(:,2));
stdAge  = std(X(:,3));

nb2 = b(2)/stdTime;
nb3 = b(3)/stdAge; 

%% 4. Produce scatter plots that visualize the relationship between the independent and dependent variables

% plotting
figure(1), clf
subplot(121)
plot(X(:,2),y,'o','markerfacecolor','b')
axis square, title('Sold items by Time')
xlabel('Time of day'), ylabel('Widgets purchased')
grid on

subplot(122)
plot(X(:,3),y,'o','markerfacecolor','r')
axis square, title('Sold items by Age')
xlabel('Age'), ylabel('Widgets purchased')
grid on
hold off

%% 5.Compute R^2 for the model to see how well it fits the data

% compute the model-predicted values
yHat = X*b;

% compute the R^2
rSqrt = 1 - sum((yHat-y).^2) / sum((y-mean(y)).^2);

disp(' ')
disp('Variance Explained by the Model:')
disp(rSqrt*100)
disp(' ')

