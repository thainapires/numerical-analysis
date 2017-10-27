% Método de Jacobi e Gauss Seincel

clc
format long
%A=[3 -1 -1;1,5,1;1,1,7];
A=[10 2 1;1 5 1;2 3 10];
%A=[1 1; 1 -3];
%A=[5 2 2; 1 3 1; 0 6 8]
%b=[-2;14;24];
b=[7;-8;6];
%b=[3;-3];
%b=[3;-2;-6];
n=length(b);
x=zeros(n,1);
xn = x;
ee = 10^(-8);
iter = 0;

%Processamento

while iter <= 1000
    
    for i= 1:n
        soma=0;
            for j=1:n
                if(j~=i)
                    soma=soma+A(i,j)*x(j);
                end;
            end;
                %x(i)=(b(i)-soma)/A(i,i);
                xn(i)=(b(i)-soma)/A(i,i);
                %disp(xn(i));        
    end;
    
x = xn;
iter = iter + 1;
if norm(A*x - b, inf) < ee
    break;
end;
%imprimir o iter e x;
disp('Iteração: ');
disp(iter);
disp('x é: ');
disp(x);
end;

%Saida

if iter<=1000
   disp('Resultado : Achou solucao');
   disp('x:');
   disp(x);
   disp('Numero de iteracoes:');
   disp(iter);
else
   disp('Resultado : Nao achou solucao');
   disp('Numero de iteracoes:');
   disp(iter);
  
end;
    