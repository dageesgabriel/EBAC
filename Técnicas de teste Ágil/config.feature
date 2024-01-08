            # language: pt

            Funcionalidade: Configuração de Produto na EBAC-SHOP
            Como um cliente da EBAC-SHOP
            Eu quero configurar meu produto de acordo com meu tamanho e preferências
            E escolher a quantidade
            Para poder inseri-lo no carrinho

            Contexto:
            Dado que estou na página de um produto da EBAC-SHOP

            Cenário: Seleção obrigatória de cor, tamanho e quantidade
            Quando eu escolho uma cor
            E escolho um tamanho
            E defino a quantidade
            Então as opções de cor, tamanho e quantidade devem ser refletidas no produto

            Cenário: Limite de quantidade de produtos por venda
            E que eu selecionei um tamanho e uma cor
            Quando eu tento adicionar mais de 10 itens ao carrinho
            Então uma mensagem de erro deve ser exibida informando o limite de 10 itens

            Cenário: Resetar configurações com o botão "limpar"
            E que eu já tenha selecionado as opções de cor, tamanho e quantidade
            Quando eu clico no botão "limpar"
            Então todas as minhas seleções devem ser resetadas para o estado original