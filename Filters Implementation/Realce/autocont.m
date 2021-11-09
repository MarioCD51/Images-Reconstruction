clear all; clc;

I=imread('prueba.png');
%I=rgb2gray(I);
max=max(max(I));
min=min(min(I));
low=0;
high=64;
AutoCont=(I-low).*((max-min)/(high-low));

figure, subplot(121), imshow(AutoCont), title('64 niveles de gris');
subplot(122), imhist(AutoCont);
% subplot 221
% imshow(I)
% subplot 222
% imshow (AutoCont)
% subplot 223
% imhist(I)
% subplot 224
% imhist (AutoCont)