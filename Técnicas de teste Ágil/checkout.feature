            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer meu cadastro
            Para concluir minha compra

            Contexto:
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            
            Cenário: Cadastro válido
            Quando eu preencher todos os dados obrigatórios
            E o e-mail for válido
            E não deixei nenhum campo em branco
            Então o meu cadastro deve ser concluído com sucesso

            Cenário: E-mail inválido
            Quando eu preencher todos os dados obrigatórios
            E não deixei nenhum campo em branco
            Mas o e-mail for inválido
            Então deve exibir uma mensagem de erro

            Cenário: Campos vazios
            Quando eu preencher todos os dados obrigatórios
            E o e-mail for válido
            Mas algum campo ficou em branco
            Então deve exibir uma mensagem de alerta