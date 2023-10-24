%% a i)
N = 1e5; % numero de experiencias
p = 0.3; % probabilidade
n = 5; % numero de peças

x = rand(n,N) < p;
xt = sum(x);
p = zeros(1,6);

for i = 0:5
    p(i + 1) = sum(xt == i) / N;
end

subplot(2,1,1)
stem(0:5, p);
xlabel('x');
ylabel('px(x)');

%% a ii)

x = [0,1,2,3,4,5];

xx = [-2 x 8];
px = [ 0 p 0];

Fx = cumsum(px);

subplot(2,1,2)
stairs(xx,Fx, "-o")

%% a iii)