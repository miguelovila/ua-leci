
%a)
dados = 6;
prob = 1/6;
n_exp = 1e5;

igual_a_9 = 0;
par = 0;
igual_a_5 = 0;
nao_1 = 0;

for i = 1:n_exp
    valores_saidos = randi(6,1,2); %Faces de um dado, 1 linha, 2 dados lançados

    if (valores_saidos(1) + valores_saidos(2) == 9)
        igual_a_9 = igual_a_9 +1;
    end
    if(rem(valores_saidos(2),2) == 0 )
        par = par +1;
    end
    if((valores_saidos(1) == 5) || (valores_saidos(2) == 5) )
        igual_a_5 = igual_a_5 +1;
    end

    if((valores_saidos(1) == 1) || (valores_saidos(2) == 1) )
    else
        nao_1 = nao_1 +1;
    end

end

A = igual_a_9/n_exp
B = par/n_exp
C = igual_a_5/n_exp
D = nao_1/n_exp