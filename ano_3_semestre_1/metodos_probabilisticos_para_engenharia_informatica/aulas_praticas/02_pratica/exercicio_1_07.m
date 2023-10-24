%
% A    - Programa do André   P(A) = 20/100 
% B    - programa do Bruno   P(B) = 30/100
% C    - Programa do Carlos  P(C) = 50/100
% Erro - Erro no programa
%
% P(Erro | A) = 0.01   = 1/100
% P(Erro | B) = 0.05   = 5/100
% P(Erro | C) = 0.0001 = 1/1000
%
% P(C | Erro) = P(C e Erro) / P(Erro)
%             = (5/(100*100)) / (175/(100*100)) = 5/175 = 1/35   
%
%
% P(C e Erro) = P(Erro | C) * P(C) = (1/100) * (50/100)
%
% P(Erro) = P(Erro e A) + P(Erro e B) + P(Erro e C)
%         = P(Erro | A) * P(A) + P(Erroo | B) * P(B) + P(Erro | C) e P(C)
%