# language: pt

Funcionalidade: Login para visualização de pedidos
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: 
    Dado que eu acesse o portal ebac
    Quando eu digitar o login <login>
    E a senha <senha>

  Esquema do Cenário: Usuário com Dados Válidos
    Então devo ser direcionado para a página de pedidos

    Exemplos: 
      | login                | senha         |
      | fernando@ebac.com    | aSDc123@      |
      | maria_silva@ebac.com |     23SAf456@ |
      | jos.estevao@ebac.com | dshbfR5YH789@ |
      | miguel@ebac.org      | jkl123@       |
      | elisa@ebac.com.br    | mno456@       |

  Esquema do Cenário: Usuário com dados inválidos
    Então deve aparecer a mensagem "Usuário e/ou senha inválido(s)"

    Exemplos: 
      | login                   | senha   |
      | fernandokasjgf@ebac.com | 112333@ |
      | efestrgasjgf            | jdgf4@  |
      | @ebac.com               |   34rds |
