%% Code challenge from video 85

clear, clc

%% RREF of matrices with different sizes and ranks

% compute RREF of different random matrices, such as square matrices...
SQR = randn(5);
rref(SQR)

% ... rectangular (both tall and wide) ...
RCT = randn(5,3);
rref(RCT)

RCW = randn(3,5);
rref(RCW)

% ... and for different linear dependencies (i.e., reduced-rank, rows and cols)
SQRdr = SQR;
SQRdr(2,:) = SQR(1,:); % duplicate 1 row 
rref(SQRdr)

SQRdc = SQR;
SQRdc(:,2) = SQR(:,1); % duplicate 1 col 
rref(SQRdc)



