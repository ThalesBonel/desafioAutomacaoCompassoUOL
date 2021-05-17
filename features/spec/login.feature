# language: pt
@login @end2end
Funcionalidade: Login no Ecommerce Fake
  Como um usuário do site Fake Ecommerce
  Gostaria de logar com meu perfil válido
  Para realizar minha compra

  Contexto:
    Dado que acesso a página de login

  @login_sucesso
  Cenário: Realizar login
    Quando eu faço login com "thalesbbonel@gmail.com" e "thales123"
    Então  devo ver "MY ACCOUNT" na área logada

  @login_falha
  Esquema do Cenario: Login com dados inválidos
    Quando eu faço login com <email> e <senha>
    Então devo ver a mensagem de alerta <alerta>

    Exemplos: 
      | email                      | senha             | alerta                       |
      | "emailinvalido@gmail.com"  | "invalida123"     | "Authentication failed."     |
      | "thales.bonel"             | "thales123"       | "Invalid email address."     |
      | ""                         | "thales123"       | "An email address required." |
      | "thalesbbonel@gmail.com"   | ""                | "Password is required."      |