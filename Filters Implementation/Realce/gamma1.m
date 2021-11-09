clc;
clear all;

A=imread('dali.jpg');
A=rgb2gray(A);
A=1.5.*A+10;

g1=0.25;
g2=0.5;
g3=0.75;
g4=1;
g5=1.5;



a=imadjust(A,[0;1],[0;1],g1);
b=imadjust(A,[0;1],[0;1],g2);
c=imadjust(A,[0;1],[0;1],g3);
d=imadjust(A,[0;1],[0;1],g4);
e=imadjust(A,[0;1],[0;1],g5);

figure()
subplot(2,3,1)
imshow(A)
title('Original');
subplot(2,3,2)
imshow(a)
title('Gamma=0.25');
subplot(2,3,3)
imshow(b)
title('Gamma=0.5');
subplot(2,3,4)
imshow(c)
title('Gamma=0.75');
subplot(2,3,5)
imshow(d)
title('Gamma=1');
subplot(2,3,6)
imshow(e)
title('Gamma=1.5');

figure
subplot(2,3,1)
imhist(A)
title('Original');
subplot(2,3,2)
imhist(a)
title('Gamma=0.25');
subplot(2,3,3)
imhist(b)
title('Gamma=0.5');
subplot(2,3,4)
imhist(c)
title('Gamma=0.75');
subplot(2,3,5)
imhist(d)
title('Gamma=1');
subplot(2,3,6)
imhist(e)
title('Gamma=1.5');