# Projeto Demo 2

Exemplo de um possível micro projeto. ⚠️ ATENÇÃO: contém erros de implementação


## Descrição do Funcionamento e Requisitos

O circuito a projetar é um contador decrescente à frequência de 2Hz de módulo 16 cujo ciclo de contagem é: 0,15,14,13,...,2,1,0,15,...

O valor de contagem deverá ser mostrado num 7-segment display em hexadecimal.

O contador deverá ter 2 modos:
- `normal`: o valor é mostrado no 7-segment display continuamente;
- `piscar`: o valor é mostrado no 7-segment display a piscar 1x por segundo (1Hz de frequência).

Por padrão o contador começa no modo normal. A transição é feita como botão KEY1. A cada clique o modo do contador muda. (É aconselhável usar um debouncer na KEY1).

O circuito terá de utilizar obrigatóriamente o CLOCK50 da FPGA para todos os componentes síncronos.

A KEY0 deverá fazer o reset do circuito: colocar o valor do contador a 0 e definir o modo para piscar.

# Responsabilidades Individuais e Conduta Académica

Com este projeto, o autor [Miguel Vila](https://github.com/miguelovila) não assume qualquer responsabilidade caso este repositório contenha erros. Este projeto (enunciado e resolução) são inventados a partir dos diversos guiões práticos, qualquer semelhança a outros enunciados corresponde a uma mera coincidência. Ainda assim, a cópia ou a multiplicação da informação fornecida neste projeto é, mesmo que para uso particular, expressamente proibida e extremamente desaconcelhada.
