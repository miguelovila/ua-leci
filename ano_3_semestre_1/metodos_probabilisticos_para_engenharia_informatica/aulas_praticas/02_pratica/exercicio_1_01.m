%% a) Obtenha por simulação uma estimativa da probabilidade do acontecimento
% "ter pelo menos um filho rapaz” em famı́lias com 2 filhos.

N= 1e5;  % Número de experiências
p = 0.5; % Probabilidade de filho M
k = 1;   % Condiçao: pelo menos 1 filho M
n = 2;   % Familia com 2 filhos

familias= rand(n,N);
rapazes= familias < p;
sucessos= sum(rapazes)>=k;
fprintf("1 a)");
probSimulacao= sum(sucessos)/N

%% b) Determine o valor teórico do acontecimento da alı́nea anterior e
% compare-o com a estimativa obtida por simulação. Os valores são iguais?
% Porquê?

% R: Sim. Existem 4 combinaçoes de estados possiveis (MF, MM, FM, MF).
% Destes 4, apenas 1 nao satisfaz a condiçao pedida, entao a probabilidade
% de "ter pelo menos um filho rapaz" collesponde a 3*25%=75%.

%% c) Suponha que para uma famı́lia com 2 filhos escolhida ao acaso, sabemos
% que um dos filhos é rapaz. Qual a probabilidade do outro filho ser também
% rapaz? Determine o valor teórico desta probabilidade e estime a mesma
% probabilidade por simulação.

N= 1e5;  % Número de experiências
p = 0.5; % Probabilidade de filho M
k = 2;   % Condiçao: pelo menos 2 filhos
n = 2;   % Familia com 2 filhos

familias= rand(n,N);
rapazes= familias < p;
rapazes_interessantes = sum(rapazes) >= 1; % Possiveis
rapazes_favoraveis = sum(rapazes) == 2;
fprintf("1 c)");
sucessos = sum(rapazes_interessantes & rapazes_favoraveis) / sum(rapazes_interessantes)

%% d) Sabendo que o primeiro filho de uma famı́lia com 2 filhos é rapaz,
% determine por simulação a probabilidade do segundo filho ser rapaz. O que
% se pode concluir do resultado obtido relativamente à independência de
% acontecimentos?

% A = 2º filho rapaz      P(A|B) = P(A e B) / P(B)
% B = 1º filho rapaz

N = 1e5;  % Número de experiências
p = 0.5;  % Probabilidade de filho M

familias= rand(n, N);
rapazes= familias < p;
A = rapazes(2,:);
B = rapazes(1,:);
AintB = A & B;
fprintf("1 d)");
probSimulacao = sum(AintB) / sum(B)

%% e) Considere uma famı́lia com 5 filhos. Sabendo que pelo menos um dos
% filhos é rapaz, obtenha por simulação uma estimativa para a probabilidade
% de um dos outros (e apenas um) ser também rapaz.

N = 1e5;
p = 0.5;
k = 1;
n = 5;

familia = rand(n,N) > p;
pm1Rapaz = sum(familia) >= k;
ofRapaz = sum(familia) == 2;
fprintf("1 e)");
prob = sum(pm1Rapaz & ofRapaz) / sum(pm1Rapaz)

%% f)

N = 1e5;
p = 0.5;
k = 1;
n = 5;

familia = rand(n,N) > p;
pm1Rapaz = sum(familia) >= k;
ofRapaz = sum(familia) >= 2;
fprintf("1 f)");
prob = sum(pm1Rapaz & ofRapaz) / sum(pm1Rapaz)

