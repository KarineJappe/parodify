#language: pt

Funcionalidade: Login
  Sendo um usuário previamente cadastrado
  Quero acessar o sistema com meu email e senha
  Para que eu possa ter acesso as playlists do Parodify

  @smoke
  Cenário: Login do usuário

    Dado que acesso a página de login
    Quando submeto minhas credenciais com: "karine@bol.com" e "pwd123"
    Então devo ser redirecionado para a área logada

  Esquema do Cenário: Tentativa de login

    Dado que acesso a página de login
    Quando submeto minhas credenciais com: "<email>" e "<senha>"
    Então devo ser a mensagem de erro: "Oops! Email e/ou senha incorretos."

    Exemplos:
      | email          | senha  |
      | karine@404.com | abc123 |
# |                  |        |
# | karine@gmail.com |        |
# | karine@404.com   |        |
