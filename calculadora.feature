# language: pt
Funcionalidade: Calculadora
Como não sei fazer contas de cabeça
Quero usar a Calculadora do sistema
Para somar dois números

  Esquema do Cenário: Soma de dois números
    Dado que eu acesse a Calculadora
    Quando eu somar <n1> com <n2>
    Então o resultado deve ser <resultado>

    Exemplos: 
      | n1   | n2 | resultado |
      | -100 |  0 |      -100 |
      |    1 | 12 |        13 |
      |    3 | -5 |        -2 |
