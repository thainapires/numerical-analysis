function bissec
    format long;
    clc
    
    a=0;
    b=3;
    prec=10^-6;
    fa=f(a);
    fb=f(b);
    
    if(f(a)*f(b) > 0)
        disp('N�o h� certeza que existe raiz neste intervalo');
        return;
    end;
    if(abs(f(a)) < prec)
        disp('a � a raiz, e seu valor �:');
        disp(a);
        return;
    end;
    
    if(abs(f(b)) < prec)
        disp('b � a raiz, e seu valor �:');
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

%Sa�da = pontos encontrados, soluu��o x, f(x), itera��o
    disp('Pontos encontrados: ');
    disp(aux);
    disp('Solu��o :');
    disp(x);
    disp('f(x):');
    disp(f(x));
    disp('N�mero de itera��es:');
    disp(k);
end
    

function y = f(x)  
    %y =x*log10(x)-1;
    %y= x^2-0.5;
    %y=x^3-9*x+3;
    y=x^2-4*x+3; %0 a 4
end
    

