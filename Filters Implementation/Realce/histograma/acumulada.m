function [h2] = acumulada(I)
p=0; %contador de la ocurrencia de pixeles. Se inicializa en cero
s=0;
[x y]=size(I);
for k=1:256
    for i=1:x
        for j=1:y
            if(I(i,j)==k)
                p=p+1; %aumenta la cuenta
            end
        end
    end
    s=s+p;
    H(1,k)=s;
    k=k+1;
end
h2=H/s; %normalización
