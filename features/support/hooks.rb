Before do
    visit 'https://marktasks.herokuapp.com/api/reset/fernando@qaninja.io?clean=full'
  
    @login = LoginPage.new
    @tasks = TarefasPage.new
    @perfil = PerfilPage.new
  end
  
  Before('@auth') do
    @login.load
    @login.logar('eu@papito.io', '123456')
  end
  
  After('@logout') do
    @tasks.nav.bye
  end
  
  
  After('@perfil_logout') do
    @perfil.nav.bye
  end