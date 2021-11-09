clc;
clear all;

I=imread('dali.jpg');
I=rgb2gray(I);
max=255;
min=0;
h=200;
l=0;

AD=(I-l)*((max-min)/(h-l));
figure
imshowpair (I,AD, 'montage');
axis off
figure
subplot 121
imhist(I)
subplot 122
imhist(AD)