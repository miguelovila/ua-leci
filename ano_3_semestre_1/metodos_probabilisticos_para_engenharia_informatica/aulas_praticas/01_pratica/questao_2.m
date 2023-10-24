%% Codigo 1

% Gerar uma matriz com 3 linhas e 10000 colunas de números aleatórios
% entre 0.0 e 1.0 (ou seja, cada coluna representa uma experiência):
c1_experiencias= rand(3,10000);
% Gerar uma matriz com 3 linhas e 10000 colunas com o valor 1 se o valor
% da matriz anterior for superior a 0.5 (ou seja, se saiu cara) ou com o
% valor 0 caso contrário (ou seja, saiu coroa):
c1_lancamentos= c1_experiencias > 0.5; % 0.5 corresponde a 1 - prob. de caras
% Gerar um vetor linha com 10000 elementos com a soma dos valores de cada
% coluna da matriz anterior (ou seja, o número de caras de cada experiência):
c1_resultados= sum(c1_lancamentos);
% Gerar um vetor linha com 10000 elementos com o valor 1 quando o valor do
% vetor anterior é 2 (ou seja, se a experiência deu 2 caras) ou 0 quando é
% diferente de 2:
c1_sucessos= c1_resultados == 2;
% Determinar o resultado final dividindo o número de experiências com 2
% caras pelo número total de experiências:
c1_probSimulacao= sum(c1_sucessos)/10000;

%% Codigo 2

N= 1e5;  %número de experiências
p = 0.5; %probabilidade de cara
k = 2;   %número de caras
n = 3;   %número de lançamentos
lancamentos= rand(n,N) > p;
sucessos= sum(lancamentos)==k;
probSimulacao= sum(sucessos)/N;