Dado('que acesso a página de login') do
  @login_page.load
end

Quando('eu faço login com {string} e {string}') do |email, password|
  @login_page.login(email, password)
end

Então('devo ver {string} na área logada') do |expect_name|
  expect(@logged_page.logged_user).to eq expect_name
  expect(@logged_page.get_account_name). to eq "Thales Bonel"
end

Então('devo ver a mensagem de alerta {string}') do |expect_message|
 expect(@login_page.getAlert_loginPage).to eq expect_message
end