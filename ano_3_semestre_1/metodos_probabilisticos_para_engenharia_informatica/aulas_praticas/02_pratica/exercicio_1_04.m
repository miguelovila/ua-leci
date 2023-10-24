%a)
% Inicialize o valor mínimo de n e a probabilidade
n = 1;
probabilidade = 1;

% Defina o limite desejado para a probabilidade (0,5 ou 50%)
limite_probabilidade = 0.5;

% Enquanto a probabilidade for maior que o limite desejado
while probabilidade > limite_probabilidade
    % Atualize a probabilidade com base no valor atual de n
    n = n + 1;
    probabilidade = probabilidade * (365 - n + 1) / 365;
    
end
n

%b)

n = 1;
probabilidade = 1;

% Defina o limite desejado para a probabilidade (0,5 ou 50%)
limite_probabilidade = 0.1;

% Enquanto a probabilidade for maior que o limite desejado
while probabilidade > limite_probabilidade
    % Atualize a probabilidade com base no valor atual de n
    n = n + 1;
    probabilidade = probabilidade * (365 - n + 1) / 365;
    
end

n