%MANEJO DE HISTOGRAMA
clear all;
I=imread('ABDOMEN.png');
h=histograma_F(I); %Llamamos a la función histograma para realizar el
%histograma de la imagen en 256 niveles de gris
figure()
subplot (2,2,1); imshow(I); title ('Imagen original');
subplot (2,2,2); bar(h); %Histograma en forma de barras
title ('Histograma de la imagen original');
subplot (2,2,3); stem(h); %Histograma con forma de pulsos
title ('Histograma de la imagen original');
subplot (2,2,4); stairs(h); %Histograma en forma de escalera
title ('Histograma de la imagen original');

%Ecualización del histograma
h0=h/3601;%Histograma normalizado
x1=0:1:255;
g=gaussmf(x1,[50 127]); %Función Gaussiana Normalizada
figure ()
subplot(2,2,1); bar(h0), title('HISTOGRAMA ECUALIZADO');
subplot(2,2,2); plot(x1,g), title ('GAUSSIANA NORMALIZADA');
h2=conv(g,h0);
subplot(2,2,3); bar(h2); title('CONVOLUCIÓN')
subplot(2,2,4); 
J=histeq(I,h2);
imshow(J); title('IMAGEN RESULTANTE DE LA ECUALIZACIÓN');

%Aplanamiento del histograma
J2=varhist(I,'Distribution', 'uniform');
figure()
subplot(121), imhist(J2);
subplot(122), imshow(J2);