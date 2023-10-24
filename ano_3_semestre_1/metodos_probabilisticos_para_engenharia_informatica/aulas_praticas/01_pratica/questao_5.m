n_lancamentos= 20;
data= zeros(1,n_lancamentos);
for c = 0:n_lancamentos
    data(c+1)= prob_cara_coroa(0.5,n_lancamentos,c,1e5);
end

