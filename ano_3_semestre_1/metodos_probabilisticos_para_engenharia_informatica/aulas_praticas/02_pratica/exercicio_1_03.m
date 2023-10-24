%a)

%Inicialização 
T = 1000;                       %Espaço de endereçamento 
prob_devolv = 1/T;              %Probabilidade de 1 
n_keys = 10;                    %Numero de Keys
numero_experiencias = 1e5;      %Numero de experiencias


iguais = 0                      %Numero de hashes com 2 ou mais keys iguais

for i = 1:numero_experiencias
    array_value = randi(T,1,n_keys);
    if(length(unique(array_value)) == n_keys)
    else
        iguais = iguais +1;
    end     
end

prob = iguais/numero_experiencias


%b)

%c)

T_values = 100:100:1000;        %Espaço de endereçamento 
n_keys = 50;                    %Numero de Keys
numero_experiencias = 1e5;      %Numero de experiencias


diferentes = 0;                 %Numero de hashes com nenhuma keys iguais
y_values = zeros(1,length(T_values));

for T_index = length(T_values)
    T = T_values(T_index);
    diferentes = 0;
    for i = 1:numero_experiencias
        array_value = randi(T,1,n_keys);
        if(length(unique(array_value)) == n_keys)
            diferentes = diferentes +1;
        end     
    end
    y_values(T_index) = diferentes / numero_experiencias;
end



figure;

plot(T_values,y_values,'-o')












