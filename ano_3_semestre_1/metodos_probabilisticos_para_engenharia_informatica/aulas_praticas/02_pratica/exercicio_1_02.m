%% a)

N = 1e5; % Número de simulações

% Gere uma matriz de lançamentos de dardos
% Cada coluna representa uma simulação com 20 dardos lançados
a = randi(100, 20, N);

% Array para armazenar resultados de cada simulação
res = zeros(1, N);

% Loop através das simulações
for i = 1:N
    % Se o número de alvos únicos atingidos é 20, marque como verdadeiro (1)
    res(i) = length(unique(a(:, i))) == 20;
end

% Calcule a probabilidade de todos os dardos atingirem alvos diferentes
fprintf("2 a)");
probabilidade = sum(res) / N

%% b)

N = 1e5;

a = randi(100, 20, N);
res = zeros(1, N);

for i = 1:N
    res(i) = length(unique(a(:, i))) < 20;
end

fprintf("2 b)");
probabilidade = sum(res) / N

%% c)

m_values = [1000,100000];
n_values = 10:10:100;

prob_mil =zeros(length(n_values),1);
prob_10mil =zeros(length(n_values),1);

n_simulacoes = 1e5;
%Valor de m
for m_index = 1:length(m_values)
    m = m_values(m_index);
    
    %Valor de n
    for n_index = 1:length(n_values)
        n = n_values(n_index);
        n_acertos = 0;
        
        %Verificar se acertou
        for i = 1:n_simulacoes
             acertou = randi(m,1,n);
            if length(unique(acertou)) == n
                n_acertos = n_acertos +1;
            end

        end
        
        %adicionar no array de probabilidades
        if m == 1000
            prob_mil(n_index) = 1- (n_acertos/n_simulacoes);
        else
            prob_10mil(n_index) = 1-  (n_acertos/n_simulacoes);
        end

    end

end

%Graficos

figure;
subplot(2,1,1);
plot(n_values,prob_mil, '-o');
title('m = 1000');
xlabel('Número de Dardos (n)');
ylabel('Probabilidade');
grid on;

subplot(2,1, 2);
plot(n_values, prob_10mil, '-o');
title('m = 100000');
xlabel('Número de Dardos (n)');
ylabel('Probabilidade');
grid on;

sgtitle('Probabilidade de Pelo Menos 1 Alvo Atingido 2 ou Mais Vezes');


%d)
m_values = [ 200, 500, 1000, 2000, 5000, 10000, 20000, 50000 , 100000];
prob_m =zeros(length(m_values),1);


n_simulacoes = 1e5;
n = 100;
%Valor de m
for m_index = 1:length(m_values)
    m = m_values(m_index);
    
    %Valor de n
    
    n_acertos = 0;    
    %Verificar se acertou
    for i = 1:n_simulacoes
         acertou = randi(m,1,n);
        if length(unique(acertou)) == n
            n_acertos = n_acertos +1;
        end

    end
    %adicionar no array de probabilidades
    prob_m(m_index) = 1- (n_acertos/n_simulacoes);
end

figure
plot(m_values, prob_m, '-o')
xlabel("Número de Alvos")
ylabel("Probabilidade")
grid on