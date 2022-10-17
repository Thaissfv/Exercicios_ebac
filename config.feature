# language: pt

Funcionalidade: Configuração de produtos para inserir no carrinho
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que eu acesse o site EBAC

  Esquema do Cenario: Seleção válida de produtos
    Quando eu escolher a cor vermelha, o tamanho GG e a quantidade de 3 unidades
    E clicar no botão comprar
    Então deve aparecer a mensagem "Produto adicionado ao carrinho."

  Esquema do Cenario: Seleção inválida de produtos
    Quando eu escolher a <cor>, o <tamanho> e a <quantidade>
    E clicar no botão comprar
    Então deve aparecer a <mensagem>

    Exemplos: 
      | cor     | tamanho | quantidade | mensagem                                  |
      |         | GG      |          3 | "Escolha a cor."                          |
      | Verde   |         |          5 | "Escolha o tamanho."                      |
      | Azul    | G       |            | "Escolha a quantidade."                   |
      | Amarelo | M       |         11 | "A quantidade deve ser menor/igual a 10." |

  Cenário: Clicar no botão limpar
    Dado que eu desisti do produto selecionado
    Quando eu clicar no botão "Limpar"
    Então os parâmentros de cor, tamanho e quantidade devem voltar ao estado inicial
