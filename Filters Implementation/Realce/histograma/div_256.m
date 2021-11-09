function [h1] = div_256(I,h2)
%contador de la ocurrencia de pixeles. Se inicializa en cero
g=0;
[x y]=size(I);
d=1/255;
for k=1:255
    for i=1:x
        for j=1:y
            if(h2(1,k)<d)
            end
                 
            H(k,j)=I(i,j);
            d=d+(1/255);
       j=j+1;
        end
        i=i+1;
    end
    k=k+1;
    end
h1=H;