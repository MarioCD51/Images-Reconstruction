A = imread('nacho7.jpg');
A = rgb2gray(A);
[m,n] = size(A);

Ph = A(n/2,:);
Pv = A(:,m/2);
Pd = diag(A);

% Imh = A;
% Imh(:,m/2) = zeros(m,1);
% 
% Imv = A;
% Imv(n/2,:) = zeros(1,n);

subplot(121), imshow(A);
subplot(122), plot(Ph), title('Horizontal');

figure, subplot(121), imshow(A);
subplot(122), plot(Pv), title('Vertical');

figure, subplot(121), imshow(A);
subplot(122), plot(Pd), title('Diagonal');

