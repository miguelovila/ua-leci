%% a) Sequência crescente de numeros pares com
%     inı́cio em 4 e a terminar em 100.
n_a= 4:2:100;

%% b) Sequencia descrescente de numeros com inicio
%     em 5 e a terinar em -5.
n_b= 5:-1:-5;

%% c) Sequencia numerica com 100 elementos
%     pertencentes ao intervalo [0 ... 1].
n_c= 0:(1-0)/(100-1):1;

%% d) Matriz aleatória usando o comando ≫ B= rand(20,30) (20 linhas e 30
%     colunas). Construa um comando que permita extrair para uma matriz C
%     uma sub-matriz de B constituı́da pelas linhas de 10 a 15 e as colunas
%     de 9 a 12.
B_d= rand(20,30);
C_d= B_d(10:15,9:12);

%% e) Gere uma sequência, x, a começar em −π e a acabar em π com um passo
%     de π/15.
x_e= -pi:pi/15:pi;

%% f) Corra o comando >> plot(x, sen(2*pi/3*x). A que corresponde o gráfico
%     obtido?
x_f= -pi:pi/100:pi;
plot(x_f, sin(2*pi/3*x_f));