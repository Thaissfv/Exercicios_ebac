# language: pt
Funcionalidade: Configuração de produtos para inserir no carrinho
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

  Contexto: 
    Dado que eu acesse o site EBAC
    Quando eu escolher meu produto

  Esquema do Cenario: Seleção de cor
    Então devo escolher a cor <cor>
      | Cor     |
      | Preto   |
      | Branco  |
      | Amarelo |
      | Azul    |
      | Rosa    |

  Esquema do Cenario: Seleção de tamanho
    Então devo escolhar o tamanho <tamanho>
      | Tamanho |
      | PP      |
      | P       |
      | M       |
      | G       |
      | GG      |

  Esquema do Cenario: Seleção de quantidade até 10
    Então devo escolher a quantidade <quantidade>
    E deve aparecer a <mensagem> quando passar de 10
       | Quantidade | mensagem                            |
      |          1 |Quantidade válida.|
      |          2 |Quantidade válida.|
      |          3 |Quantidade válida.|
      |          4 |Quantidade válida.|
      |          5 |Quantidade válida.|
      |          6 |Quantidade válida.|
      |          7 |Quantidade válida.|
      |          8 |Quantidade válida.|
      |          9 |Quantidade válida.|
      |         10 |Quantidade válida.|
      |         11 |Quantidade inválida. Escolha até 10 |
      |         12 |Quantidade inválida. Escolha até 10 |
      |         43 |Quantidade inválida. Escolha até 10 |
      |        214 |Quantidade inválida. Escolha até 10 |
      |         15 |Quantidade inválida. Escolha até 10 |
      |         16 |Quantidade inválida. Escolha até 10 |


  Cenário: Clicar no botão limpar
  Dado que eu desisti do produto selecionado
  Quando eu clicar no botão "Limpar"
  Então os parâmentros devem voltar ao estado inicial