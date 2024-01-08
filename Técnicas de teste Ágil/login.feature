            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então deve ser redirecionado para a tela de checkout

            Cenário: Usuário inexistente
            Quando eu digitar o usuário "xxxxyyyyzzzz@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "sfdfgsfdgs"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários ou senha inválidos
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuarios            | senha       | mensagem                     |
            | "joao@ebac.com.br"  | "senha@987" | "Usuário ou senha inválidos" |
            | "maria@ebac.com.br" | "senha@123" | "Usuário ou senha inválidos" |
            | "joao@ebac.com"     | "senha@"    | "Usuário ou senha inválidos" |