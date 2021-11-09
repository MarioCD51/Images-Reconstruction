clc;
clear all;

a=imread('panda.jpg');
b=rgb2gray(a);
m=max(max(b));
inv=m-b;

figure
imshowpair(b,inv, 'montage');
axis off

figure
subplot 121
imhist(b);
subplot 122
imhist(inv);

figure
r1=b-inv;
r2=inv-b;
imshowpair (r1,r2, 'montage');
axis off
figure
subplot 121
imhist(r1);

subplot 122
imhist(r2);