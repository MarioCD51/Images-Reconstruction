function [h] = histograma(I)
p=0; %contador de la ocurrencia de pixeles. Se inicializa en cero
s=0;
[x y]=size(I);
for k=1:256
    for i=1:x
        for j=1:y
            if(I(i,j)==k)
                p=p+1; %aumenta la cuenta
            end
          j=j+1;  
        end
       i=i+1; 
    end
    H(1,k)=p;
    s=s+p;
    p=0;
    k=k+1;
end
h=H; %normalización

    
