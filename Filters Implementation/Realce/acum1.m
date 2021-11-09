clc; clear all;

A=imread('albert.jpg');
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
        Imp(r,c)=H(ac+1)*(255/(m*n));
    end
end

[cont2,x2]=imhist(Imp);
vb=0;
%Histograma acumulativo imagen resultado
for v2=1:256
    h(v2)=vb+cont2(v2);
    vb=h(v2);
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
