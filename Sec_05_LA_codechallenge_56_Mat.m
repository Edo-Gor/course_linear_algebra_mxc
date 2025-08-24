%% Code challenge from video 56

clear, clc

%% Fourier transform via matrix multiplication!

% implement a Fourier transform via complex matrix multiplication

m = 50;
F = zeros(m);

w = exp(-2*pi*sqrt(-1)/m);

for j = 1:m
    for k = 1:m
        n = (j -1)*(k - 1);
        F(j,k) = w^n;
    end
end

imagesc(real(F))
imagesc(imag(F))

x = randn(m,1);
X1 = F*x;

imagesc(real(X))
imagesc(imag(X))

X2 = fft(x);

clf
plot(1:m,abs(X1)), hold on
plot(1:m,abs(X2),'o')

