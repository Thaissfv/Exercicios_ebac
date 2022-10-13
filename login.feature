# language: pt
Funcionalidade: Login para visualização de pedidos
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

  Contexto: 
    Dado que eu acesse o portal ebac

  #cenário para demonstrar como fazer para um caso específico
  Cenário: Usário com dados inválidos 
    Quando eu digitar o login "thaissfurtado123@gmail.com"
    E a senha "123654@"
    Então deve aparecer a mensagem "Usuário e/ou senha inválido(s)"

  Esquema do Cenário: Usuário com dados inválidos
    Quando eu digitar o login <login>
    E a senha <senha>
    Então deve aparecer a mensagem "Usuário e/ou senha inválido(s)"
      | login                        | senha   |
      | fernandokasjgf@ebac.com      | 112333@ |
      | efestrgasjgf@ebac.com        | jdgf4@  |
      | erhygtssjgf@ebac.com         | 34rds   |
      | erdghjnhgvfdokasjgf@ebac.com | fdr45   |
      | ersdgdokasjgf@ebac.com       | 5678iuy |
      | ernsgdsjgf@ebac.com          | sdgdf45 |
      | esdfghjkasjgf@ebac.com       | 12wseAS |

  Esquema do Cenário: Usuário com Dados Válidos
    Quando eu digitar o login <login>
    E a senha <senha>
    Então devo ser direcionado para a página de pedidos
      | login              | senha   |
      | fernando@ebac.com  | abc123@ |
      | maria@ebac.com     | def456@ |
      | josé@ebac.com      | ghi789@ |
      | miguel@ebac.com    | jkl123@ |
      | elisa@ebac.com     | mno456@ |
      | francisca@ebac.com | pqr789@ |
      | isaac@ebac.com     | stu123@ |
