%% a)
N = 1e5; % numero de experiencias
p = 0.5; % probabilidade
n = 4; % numero de lançamentos

x = rand(n,N) > p;
xt = sum(x);
p = zeros(1,5);

for i = 0:4
    p(i + 1) = sum(xt == i) / N;
end

stem(0:4, p);
xlabel('x');
ylabel('px(x)');

%% b)

% Valor esperado = probabilidades * amostra

V_esperado = p(1) * 0 + p(2) * 1 + p(3) * 2 + p(4) * 3 + p(5) * 4

%Variancia

%E = [x-E[x]^2] = E[x^2] - E[x]^2

Var = (p(1) * 0^2 + p(2) * 1^2 + p(3) * 2^2 + p(4) * 3^2 + p(5) * 4^2) - V_esperado ^2

desvio_padrao = sqrt(Var)

%% c)

% Discreta Binomial
% P(X=k)=(n,k) * p^k * (1−p)^(n-k)

%% d)

% P(X = 0) = (4,0) * (0.5)^0 * (0.5)^(4-0) = 0.0625
% P(X = 1) = (4,1) * (0.5)^1 * (0.5)^(4-1) = 0.25
% P(X = 2) = (4,2) * (0.5)^2 * (0.5)^(4-2) = 0.375
% P(X = 3) = (4,3) * (0.5)^3 * (0.5)^(4-3) = 0.25
% P(X = 4) = (4,4) * (0.5)^4 * (0.5)^(4-4) = 0.0625

%% e)

% E[x] = np = 4 * 0.5 = 2

% Var(X) = np(1-p) = 4 * 0.5 * (1 - 0.5) = 1