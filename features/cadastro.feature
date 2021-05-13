
#language:pt

Funcionalidade: Cadastro de usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

@happy
Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com: 
        |email         |bianca@gmail.com  |
        |senha         |bia260792         |
        |senha_confirma|bia260792         |
    Então devo ser redirecionado para a área logada

Esquema do Cenário: Tentativa de Cadastro

    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com: 
        |email         |<email>         |
        |senha         |<senha>         |
        |senha_confirma|<confirma_senha>|
    Então devo ver a mensagem: "<mensagem_saida>"

    Exemplos: 
        |email           |senha           |confirma_senha     |mensagem_saida                       |
        |                |bia260792       |bia260792          | Oops! Informe seu email.            |
        |bianca@gmail.com|                |                   | Oops! Informe sua senha.            |       
        |bianca@gmail.com|bia260792       |bi260792           | Oops! Senhas não são iguais.        |
        |                |                |                   | Oops! Informe seu email e sua senha.|
 @temp       
Cenario: Validação do campo email

    Quando acesso a página de cadastro
    Então deve exibir o seguinte css: "input[type=email]"



