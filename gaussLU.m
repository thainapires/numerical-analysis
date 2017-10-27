%Metodo eliminacao de Gauss/LU
clc
format long

n=3;
A=[3 -1 -1;1 5 1;1 1 7];
b=[-2;14;24];
x=[0;0;0];

%Processamento
U=A;
L=eye(n);
c=b;

for k=1:n
    for i=k+1:n
        L(i,k)=U(i,k)/U(k,k);%L(2,1)=U(2,1)/U(1,1)
                             %L(3,1)=U(3,1)/U(1,1)  
                             %L(3,2)=U(3,2)/U(2,2)
                             %Multiplicadores                            
        U(i,k)=0;%Zera os valores da matriz inferior U(2,1),U(3,1),U(3,2);
        for j= k+1:n
            U(i,j)=U(i,j)-(L(i,k)*U(k,j));%U(2,2)=U(2,2)-(L(2,1)*U(1,2));
                                           %U(2,3)=U(2,3)-(L(2,1)*U(1,3));
        end;
        c(i)=c(i)-L(i,k)*c(k);%c(2)=c(2)-L(2,1)*c(1)
        
                              
    end;
end;
disp(c(3));
 
for i=n:-1:1
    S=0;
    for j=i+1:n 
        S=S+U(i,j)*x(j);  %S=0+U(2,3)*x(3);
        disp(S);          %S=S+U(1,2)*x(2);
                          %S=S+U(1,3)*x(3);                            
        
    end;
    x(i)=(c(i)-S)/U(i,i);%x(3)=(c(3)-0)/U(3,3) 21/7 = 3
   % disp(x(i)); 
end;

%Saida
disp(L);
disp(U);
disp(c);
disp(x);