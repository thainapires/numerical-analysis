function lagrange
    clc
    format long
    %x=[1 2 3];
    %y=[6 3 2];
    x=[-3 -2 -1 0 1 2 3];
    y=[-1 -1 -1 0 1 1 1];
    n=length(x)-1;
    for k=1:(n+1)  
        m=1;
        for j=1:(n+1)
           if (k~=j)
                m=(m*(x(k)-x(j)));
           end
        end
        c(k)=y(k)/m;
        
    end
    %Imprimir coeficiente c(k)
    disp('Coeficientes: ');
    for l=1:(n+1)
        disp(c(l));
    end
    
    %Imprimir o polinomio(desafio)
    fprintf('P%i(x) = ',n+1);
    %VetAux=[1 1];
    for z=1:(n+1)
        fprintf('%+1.2f',c(z));
        for aux=1:(n+1)       
            if(aux~=z)
               fprintf('*(x %+1.2f)',(-x(aux)));
            end    
        end
    end
end
    