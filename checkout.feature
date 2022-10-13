# language: pt
Funcionalidade: Fazer login no sistema da EBAC para cadastrar e comprar
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

  Contexto: 
    Dado que eu estou concluindo meu cadastro

  Esquema do Cenário: Nome
    Quando eu preencher o campo Nome <nome>
    Então deve aparecer a mensagem <mensagem>
      | nome                     | Mensagem                           |
      | Lêda Maria               | "Nome válido"                      |
      | Lucas                    | "Nome válido"                      |
      | João Gabriel             | "Nome válido"                      |
      | Lucas Fragoso Compostela | "Nome inválido"                    |
      |                132421544 | "Nome inválido"                    |
      | Thais@                   | "Nome inválido"                    |
      | !@##%                    | "Nome inválido"                    |
      |                          | "O campo Nome não pode ser vazio." |

  Esquema do Cenário: Sobrenome
    Quando eu preencher o campo <sobrenome>
    Então deve aparecer a mensagem <mensagem>
      | sobrenome                   | Mensagem                                |
      | Silva da Costa              | "Sobrenome válido"                      |
      | Furtado                     | "Sobrenome válido"                      |
      | Vasconcelos                 | "Sobrenome válido"                      |
      | Maria das Chagas Pimentel   | "Sobrenome válido"                      |
      | elisa@@ebac.com             | "Sobrenome inválido"                    |
      |                     12Silva | "Sobrenome inválido"                    |
      |                    12 Silva | "Sobrenome inválido"                    |
      | Lucas Fragoso de Compostela | "Sobrenome inválido"                    |
      |                   234674568 | "Sobrenome inválido"                    |
      | Julia@                      | "Sobrenome inválido"                    |
      | !@$$#&%¨*                   | "Sobrenome inválido"                    |
      |                             | "O campo Sobrenome não pode ser vazio." |

  Esquema do Cenário: Endereço
    Quando eu preencher o campo Endereço <endereço>
    Então deve aparecer a mensagem <mensagem>
      | endereço                                 | Mensagem                               |
      | Rua Manuel da Costa, 123                 | "Endereço válido"                      |
      | Avenida Antonio Sales, 82342             | "Endereço válido"                      |
      | Rua skjdvbjhcb ashvskcb, 678             | "Endereço válido"                      |
      | Estrada da cratera, s/n                  | "Endereço válido"                      |
      |                                25 346457 | "Endereço inválido"                    |
      | @#$%, 123                                | "Endereço inválido"                    |
      | Rua Manuel da Costa, 123, bairro Aldeota | "Endereço inválido"                    |
      | @eRua Manuel da Costa, 123               | "Endereço inválido"                    |
      | Rua Manoel da Costa                      | "Endereço inválido"                    |
      |                                          | "O campo Endereço não pode ser vazio." |

  Esquema do Cenário: Cidade
    Quando eu preencher o campo Cidade <cidade>
    Então deve aparecer a mensagem <mensagem>
      | cidade        | Mensagem                             |
      | Fortaleza     | "Cidade válida"                      |
      | Amaricota     | "Cidade válida"                      |
      | São Paulo     | "Cidade válida"                      |
      | Alagoana      | "Cidade válida"                      |
      |        1253w4 | "Cidade inválida"                    |
      | Santos 235436 | "Cidade inválida"                    |
      | Santos @#%$   | "Cidade inválida"                    |
      | @#%$          | "Cidade inválida"                    |
      |               | "O campo Cidade não pode ser vazio." |

  Esquema do Cenário: CEP
    Quando eu preencher o campo CEP <cep>
    Então deve aparecer a mensagem <mensagem>
      | cep       | Mensagem                          |
      | 25964-240 | "CEP válido"                      |
      |  25964240 | "CEP válido"                      |
      | 253642401 | "CEP inválido"                    |
      |   2596424 | "CEP inválido"                    |
      | @25964240 | "CEP inválido"                    |
      | $%@#      | "CEP inválido"                    |
      |           | "O campo CEP não pode ser vazio." |

  Esquema do Cenário: Telefone
    Quando eu preencher o campo Telefone <telefone>
    Então deve aparecer a mensagem <mensagem>
      | telefone        | Mensagem                               |
      | (21)99999-9999  | "Telefone válido"                      |
      |     21999999999 | "Telefone válido"                      |
      |      2132445586 | "Telefone válido"                      |
      | (21)3244-5086   | "Telefone válido"                      |
      | (21)99999-99    | "Telefone inválido"                    |
      | @(21)99999-9999 | "Telefone inválido"                    |
      |        85322222 | "Telefone inválido"                    |
      | ((85)99999-9999 | "Telefone inválido"                    |
      |   0412132445858 | "Telefone inválido"                    |
      |                 | "O campo Telefone não pode ser vazio." |

  Esquema do Cenário: E-mail
    Quando eu preencher o campo e-mail <e-mail>
    Então deve aparecer a mensagem <mensagem>
      | E-mail                       | Mensagem             |
      | janainamarques@ebac.com.br   | "E-mail válido"      |
      | francisco.luciano@ebac.com   | "E-mail válido"      |
      | alice12@ebac.com.br          | "E-mail válido"      |
      | fernando@ebac.com            | "E-mail válido"      |
      | elisa@@ebac.com              | "E-mail inválido"    |
      | jhdg3654.ebac.com            | "E-mail inválido"    |
      | fariasjoelma                 | "E-mail inválido"    |
      | @ebac.com,br                 | "E-mail inválido"    |
      | marcelo@ebac,com.br          | "E-mail inválido"    |
      | julia@ebac!com.br            | "E-mail inválido"    |
      | *augustodosanjos@ebac.com.br | "E-mail inválido"    |
      |                              | "Preecha seu e-mail" |
