clc
clear all

I=imread('albert.jpg');
% Modificación contraste y brillo f(x,y)=c*I(x,y)+b
c=2.5; %Contraste
b=-10; %Brillo
%CONTRASTE
C=I*c;
%Brillo}
B=I+b;

figure
subplot 121
imshow(I)
subplot 122
imshowpair(C,B,'montage');

CB=C+b;

figure
subplot 121
imshow(I)
subplot 122
imshow(CB);