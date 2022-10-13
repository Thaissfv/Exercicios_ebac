# language: pt

Funcionalidade: Calculadora
Como não sei fazer contas de cabeça
Quero usar a Calculadora do sistema
Para somar dois números

  Cenário: Soma de dois números
    Dado que eu acesse a Calculadora
    Quando eu somar 2 + 2
    Então o resultado deve ser 4

  Esquema do Cenário: Soma de dois números
    Dado que eu acesse a Calculadora
    Quando eu somar <n1> + <n2>
    Então o resultado deve ser <resultado>

    Exemplos: 
      | n1 | n2   | resultado |
      |  0 | -100 |      -100 |
      |  1 |   12 |        13 |
      |  2 |    2 |         4 |
      |  3 |   -5 |        -2 |
      |  4 |   17 |        21 |
      |  5 |   -6 |        -1 |
      |  6 |    3 |         9 |
      |  7 |    3 |        10 |
      |  8 |    2 |        10 |
      |  9 |    1 |        10 |
      | 10 |    0 |        10 |
