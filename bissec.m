function bissec
    format long;
    clc
    
    a=0;
    b=3;
    prec=10^-6;
    fa=f(a);
    fb=f(b);
    
    if(f(a)*f(b) > 0)
        disp('Não há certeza que existe raiz neste intervalo');
        return;
    end;
    if(abs(f(a)) < prec)
        disp('a é a raiz, e seu valor é:');
        disp(a);
        return;
    end;
    
    if(abs(f(b)) < prec)
        disp('b é a raiz, e seu valor é:');
        disp(b);
        return;
    end;
    
    for k = 1:100
        x = (a + b)/2;
        aux(k)=x;
        if(abs(f(x)) < prec)
            break;
        end;
        if(f(a)*f(x) < 0)
        	b=x;
        else 
            a=x;
        end;    
    end;

%Saída = pontos encontrados, soluução x, f(x), iteração
    disp('Pontos encontrados: ');
    disp(aux);
    disp('Solução :');
    disp(x);
    disp('f(x):');
    disp(f(x));
    disp('Número de iterações:');
    disp(k);
end
    

function y = f(x)  
    %y =x*log10(x)-1;
    %y= x^2-0.5;
    %y=x^3-9*x+3;
    y=x^2-4*x+3; %0 a 4
end
    

