I = imread('nacho7.jpg');
I = rgb2gray(I);

Con = [1:5];
Bri = [-200:100:200];
k = 1;
%f(x,y)=c*I(x,y)+b
for i = 1:5
    for j = 1:5
        A = Con(j)*I + Bri(i);
        subplot(5,5,k), imshow(A);
        
        k = k + 1; 
    end
end

h = 1;
for i = 1:3
    for j = 1:3
        A = Con(j)*I + Bri(i);
        
        m = max(max(A));
        Inv = m - A;
                
        figure, subplot(2,2,h), imshow(A);
        title(['Contraste = ',sprintf('%g',Con(j)), ' / Brillo = ',sprintf('%g',Bri(i))]);
        h = h + 1;
        subplot(2,2,h), imhist(A);
        h = h + 1;
        subplot(2,2,h), imshow(Inv);
        h = h + 1;
        subplot(2,2,h), imhist(Inv);
        
        h = 1;
       
    end
end

