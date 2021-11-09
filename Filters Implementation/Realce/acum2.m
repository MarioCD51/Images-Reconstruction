clc; clear all;

A=imread('dali.jpg');
A=rgb2gray(A);
[cont,x]=imhist(A);
[m,n]=size(A);
%Iniciamos variable a utilizar para la recursión
va=0;
%Histograma acumulativo
for v=1:256
    H(v)=va+cont(v);
    va=H(v);
end

%Equilibramos linealmente con la información del histograma acumulativo
for r=1:m
    for c=1:n
        ac=A(r,c);
        Imp(r,c)=H(ac+1).*(255/(m*n));
        h(v)=va+cont(v);
        v2=h(v);
    end
end



Imp=mat2gray(Imp);
figure(1)
subplot(3,2,1);
imshow(A)
subplot(3,2,2);
imshow(Imp)
subplot(3,2,3);
imhist(A)
subplot(3,2,4);
imhist(Imp)
subplot(3,2,5)
stem(H)
subplot(3,2,6)
stem(h)
