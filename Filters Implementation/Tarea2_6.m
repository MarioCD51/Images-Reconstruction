I = imread('nacho7.jpg');
I = rgb2gray(I);
[m,n] = size(I);

sz = 5;
k = 1

index = reshape(1:20, 5, 4).';
for i = 2:5
    for j = 1:5
        A = I((j-1)*(m/sz):j*(m/sz), (i-1)*(n/sz):i*(n/sz));
        
        subplot(6, 5, index(k)), imshow(A);
        
        k = k + 1;
        
        
%         A = Con(j)*I + Bri(i);
%         subplot(5,5,k), imshow(A);
%         
%         k = k + 1; 
    end
end
% A = I(1:2*(m/sz),1:n/sz);
% 
% figure, subplot(121), imshow(I);
% subplot(122), imshow(A);

% A1 = I(1:640,1:464);
% A2 = I(640:1280,465:927);
% A3 = I(640:1280,1:464);
% A4 = I(1:640,465:927);
% 
% HA1 = histeq(A1);
% HA2 = histeq(A2);
% HA3 = histeq(A3);
% HA4 = histeq(A4);
% 
% C=[ HA1,HA4 ;  HA3,HA2];
