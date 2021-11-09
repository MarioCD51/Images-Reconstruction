A = imread('abdomen.png');
B = imread('axialt2_15.jpg');
C = imread('corte.bmp');
D = imread('rxpie-rodilla.tif');

E = imread('magriclo.jpg');
E1 = E(:,:,1);
E2 = E(:,:,2);
E3 = E(:,:,3);

F = dicomread('im22.dcm');

G = imread('rxcerv.pcx');
imshow(G)

subplot(121), imshow(A), title('(A) Abdomen');
subplot(122), imhist(A);

figure, subplot(121), imshow(B), title('(B) Axial T2');
subplot(122), imhist(B);

figure, subplot(121), imshow(C), title('(C) Corte');
subplot(122), imhist(C);

figure, subplot(121), imshow(D), title('(D) Rodilla');
subplot(122), imhist(D);

figure, subplot(241), imshow(E), title('(E) RGB');
subplot(243), imshow(E1), title('Red');
subplot(244), imhist(E1); 
subplot(245), imshow(E2), title('Green');
subplot(246), imhist(E2);
subplot(247), imshow(E3), title('Blue');
subplot(248), imhist(E3);

F = dicomread('im22.dcm');
info = dicominfo('im22.dcm');
Y = dicomread(info);
figure, subplot(121), imshow(F), title('(F) Imagen 22 DICOM');
subplot(122), imshow(Y,[]), title('Información DICOM');

figure, subplot(121), imshow(G), title('(G) Cuello');
subplot(122), imhist(G);


