# language: pt

Funcionalidade: Fazer login no sistema da EBAC para cadastrar e comprar
Como cliente da EBAC-SHOP
Quero concluir meu cadastro   
Para finalizar minha compra

  Contexto: 
    Dado que eu estou concluindo meu cadastro

  Esquema do Cenário: Dados de cadastro válidos
    Quando eu preencher os campos <nome>, <sobrenome>, <endereço>, <cidade>, <país>, <cep>, <telefone> e <e-mail>
    E clicar no botão "Finalizar compra"
    Então deve aparecer a mensagem <mensagem>

    Exemplos:

    |nome|sobrenome|endereço|cidade|país|cep|telefone|e-mail|mensagem|
    |Lucas|Pimentel da Silva|Rua Antonio Sales, 234|Rio de Janeiro|Brasil|25987-852|21999998585|lucas.ebac@ebac.com.br|"Cadastro efetuado com sucesso."|
    |Leila|Cardoso|Rua da quebrada, 91236|São Paulo|Finlandia|25412365|(21)999998888|leila@ebac.com|"Cadastro efetuado com sucesso."|
    |Marcos Antonio|Silva|Avenida Botelho da Costa, s/n|Alagoana|Emirados Árabes|58745-985|(21)852852555|marcos_antonio21@ebac.org.br|"Cadastro efetuado com sucesso."|

 Cenário: Dados de cadastro inválidos
  Quando eu preencher os campos obrigatórios com caracteres especiais
  E clicar no botão "Finalizar compra"
  Então deve aparecer a mensagem "Dado(s) obrigatório(s) inválido(s). Preencha novamente."
 
 Esquema do Cenário: E-mail inválido
    Quando eu preencher o campos <e-mail>
    E clicar no botão "Finalizar compra"
    Então deve aparecer a mensagem <mensagem>

Exemplos:
|e-mail|mensagem|
      | elisa@@ebac.com              | "E-mail inválido"    |
      | jhdg3654.ebac.com            | "E-mail inválido"    |
      | fariasjoelma                 | "E-mail inválido"    |
      | @ebac.com,br                 | "E-mail inválido"    |
      | marcelo@ebac,com.br          | "E-mail inválido"    |
      | julia@ebac!com.br            | "E-mail inválido"    |
      | *augustodosanjos@ebac.com.br | "E-mail inválido"    |


Cenário: Campos obrigatórios vazios
Quando eu deixar um campo obrigatório vazio
E clicar no botão "Finalizar compra"
Então deve aparecer a mensagem de alerta "Preencha todos os campos obrigatórios!"

