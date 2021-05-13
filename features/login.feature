            #language:pt

            Funcionalidade: Login
            Sendo um usuário previamente cadastrado
            Quero acessar o sistema com meu email e senha
            Para que eu possa ter acesso as playlists do Parodify
          
            Cenário: Login Usuário

            Dado que acesso a página de login
            Quando submeto minhas credenciais com: "bianca@gmail.com" e "bia260792"
            Então devo ser redirecionado para a área logada

            Esquema do Cenário: Tentativa de login

            Dado que acesso a página de login
            Quando submeto minhas credenciais com: "<email>" e "<senha>"
            Então devo ver a mensagem de erro: "Opps! Dados de acesso incorretos!"

            Exemplos:
            | email             |senha |
            | bianca@123.com.br |abc123|
            |                   |      |
            | bianca@gmail.com  |      |
            | bianca@123.com.br |      |

