function poli_newton
	clc
	format long
	x = [1 2 3];
	y = [6 3 2];
	n = length(x)-1;
	dd = zeros(n+1);
    dd(:,1)=y;
    
    for j=1:n
        for i = 0:(n-j)
            dd(i+1,j+1)= (dd(i+2,j)-dd(i+1,j))/(x(i+j+1)-(x(i+1)));
        end;
    end;
    %disp(dd);
    %imprimir coeficientes
    fprintf('Coeficientes: ');
    for i=1:n+1
        fprintf('%i ',dd(1,i));
    end;
    fprintf('\n');
    
    %imprime polinômio de newton

    fprintf('P%i(x) = %+1.2f',n,dd(1,1));
    for z=2:(n+1)
        fprintf('%+1.2f',dd(1,z));
        for aux=1:z-1
               fprintf('*(x %+1.2f)',(-x(aux)));
        end
    end
    fprintf('\n')
    
end