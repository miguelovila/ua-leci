%% 1 a)
%  P(x=1) = P(x=2) = P(x=3) = P(x=4) = P(x=5) = P(x=6) = 1/6 

x = 1:6;
px =  1/66 * ones(size(x));
stem(x, px)
xlabel('x');
ylabel('y');

%% 1 b)
%  

exercicio_2_01_a(x, px)

function[prob] = exercicio_2_01_a(x, px)
    xx = [0 x 7];
    pxx = [0 px 0];
    fx = cumsum(pxx);
    stairs(xx, fx);
end