A = imread('nacho7.jpg');
A = rgb2gray(A);

Gamma = [0.25, 0.5, 0.75, 1.0, 1.5, 2.0, 3.0, 4.0];

for i = 1:8
    I = imadjust(A,[0;1],[0;1],Gamma(i));
    subplot(2,4,i), imshow(I);
    title(['Gamma = ',sprintf('%g',Gamma(i))]);
end

figure, subplot(2,4,1), imhist(I);
for j = 1:8
    I = imadjust(A,[0;1],[0;1],Gamma(j));
    subplot(2,4,j), imhist(I);
    title(['Gamma = ',sprintf('%g',Gamma(j))]);
end
