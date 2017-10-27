function CalcTaylor
    clc
    format long
    %Entrada de dados
    disp('Calculo da expressao de Taylor em torno de a = 0');
    x = input('Entre com o valor de x: ');
    n = input('Entre com o numero de termos da serie: ');
    
%     %Processamento
%     s = 0;         %funcao exponencial
%     fac = 1;
%     for k = 0 : (n-1)
%         if (k>0)
%             fac = fac * k;
%         end;
%         s = s + 1*x^k/(fac);
%     end;
    
%     s = 0;         %funcao coseno
%     sig = 1;
%     for n = 0: (n-1)
%         if mod(n,2) == 0
%             s = s + sig*x^n/factorial(n);
%             sig = -sig;
%         end;
%     end;
    
    
    s = 0;           %funcao seno
    sig = 1;
    for n = 0: (n-1)
        if mod(n,2) ~= 0  % forma alternativa: if mod(n, 2) == 1
            s = s + sig*x^n/factorial(n);
            sig = -sig;
        end;
    end;

    
    %Saida
    fprintf('Taylor: %12.10f\n', s);
    fprintf('Exato: %12.10f\n', f(x));
end

function y = f(t)
    %y = exp(t);
    %y = cos(t);
    y = sin(t);
end


