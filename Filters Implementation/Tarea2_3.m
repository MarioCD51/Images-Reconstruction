A = dicomread('im22.dcm');
B = im2uint8(A);

imwrite(B, 'dicom.png');

Im = imread('dicom.png');

[count,x] = imhist(Im);
[m,n] = size(Im);

subplot(221), imshow(Im), title('Original');
subplot(222), imhist(Im);

va = 0;
for v = 1:256
    H(v) = va + count(v);
    va = H(v);
end

for r = 1:m
    for c = 1:n
        ac = Im(r,c);
        Imp(r,c) = H(ac+1)*(255/(m*n));
    end
end

Imp = mat2gray(Imp);
imwrite(Imp, 'prueba.png');

subplot(223), imshow(Imp), title('Ecualizada');
subplot(224), imhist(Imp);

% max = max(max(Im));
% min = min(min(Im));
% low = 0;
% high = 128;
% 
% C = (Im).*((max-min)/(high-low));
% C = mat2gray(C);
% 
% figure, subplot(121), imshow(C), title('128');
% subplot(122), imhist(C);
% 
% high = 64;
% D = (Im).*((max-min)/(high-low));
% D = mat2gray(D);
% 
% figure, subplot(121), imshow(D), title('64');
% subplot(122), imhist(D);