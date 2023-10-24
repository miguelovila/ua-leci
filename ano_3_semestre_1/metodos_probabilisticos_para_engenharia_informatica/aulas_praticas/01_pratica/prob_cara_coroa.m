function [prob_caras] = prob_cara_coroa(prob,n_lancamentos, n_caras, n_experiencias)
    lancamentos= rand(n_lancamentos,n_experiencias) > prob;
    sucessos= sum(lancamentos) == n_caras;
    prob_caras= sum(sucessos)/n_experiencias;
end

