%% Code challenge from video 13

clear, clc

% is the dot product commutative?
% a'*b == b'*a

% 1) generate two 100-element random row vectors, compute dot product
% between a with b, and b with a;
% 2) generate two 2-element integer row vectors, repeat

%% part 1

% define the vectors
a1 = rand(1,100);  % rand numbers between 0 and 1
b1 = rand(1,100);

% check the commutative property
dps11 = dot(a1',b1);
dps12 = dot(b1',a1);

iseq1 = dps11 == dps12;
disp([dps11,dps12,iseq1]);

%% part 2

% define the vectors
n = 10;
a2 = randi(n,1,2);  % rand integers ranging 1:10
b2 = randi(n,1,2);

dps21 = dot(a2',b2);
dps22 = dot(b2',a2);

iseq2 = dps21 == dps22;
disp([dps21,dps22,iseq2]);

