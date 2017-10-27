function newton
format long;
clc

x0= input('Digite o valor de x0: ');
prec=10^-10;
xv=x0;%xv=x anterior

%testar se x0 já é raiz
if (abs(f(x0)) < prec)
    disp('xo é a raiz');
    return;
end;

maxIter = 20;

for k=1:maxIter
    xn = xv -(f(xv)/df(xv));
    aux(k)=xn;   
    if (abs (f(xn)) < prec)
        break;
    end;
    xv=xn;
end;

 if (abs (f(xn)) < prec)
     disp('Valores de x encontrados');
     disp(aux);
     disp('Valor final de x');
     disp(xn);
     disp('f(x) é igual a');
     disp(f(xn));
     disp('Numero de iteracoes');
     disp(k);
 else 
     disp(aux);
     disp('Nao convergiu');
 end;


end

function y = f(x)  
    %y =x*log10(x)-1;
    %y= x^2-0.5;
    %y=x^3-9*x+3;
    y=x^3-5*x;
    %y=sqrt(abs(x));
end

function y= df(x)  
    %y =  log10(x) + 1/log(10);
    %y= 2*x;
    %y=3*x^2-9;
    y = 3*x^2-5;
    %y=sqrt(abs(x))/2*x;
end

%criterio de parada: |xk+1 - xk| < prec   |f(xk)| < prec