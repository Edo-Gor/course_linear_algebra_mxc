%% Code challenge from video 17

clear, clc

%% dot products with unit vectors

% create two vectors of random integers
n = 10;
a = randi(n,1,5);
b = randi(n,1,5);

% compute their lengths
al = norm(a); 
bl = norm(b);
disp(['Lenghts: ' num2str(al) ' ' num2str(bl)])

% compute their dot product magnitude
dp = abs(dot(a,b));
disp(['Dot product: ' num2str(dp)])

% normalise the vectors (i.e. scale down to unit vectors) and find 
au = a*(1/al); aul = norm(au);
bu = b*(1/bl); bul = norm(bu);
disp(['Check unit lenghts: ' num2str(aul) ' ' num2str(bul)])

% compute the dot product magnitude of these unit vectors
dpu = abs(dot(au,bu));
disp(['Dot product (unit): ' num2str(dpu)])

% notice that the dot product of two unit vectors is basically just the
% cosine of the angle between them, since: |a||b|cos(th), but here both |a|
% and |b| equal 1, leaving us with cos(th), which ranges from -1 to +1

% this notion is strictly related to what in machine learning is called 
% cosine similarity and in statistics Pearson's correlation

