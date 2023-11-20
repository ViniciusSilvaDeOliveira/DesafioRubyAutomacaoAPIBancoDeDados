Dado('ter a massa de dados') do

    DB = Sequel.connect(adapter: 'postgres', database: 'desafio_ruby', user: 'postgres', password: '1234', host: 'localhost')
    results = DB[:registro].all

    results.each do |row|
        @massa = {
            "firstname": row[:firstname],
            "lastname": row[:lastname],
            "username": row[:username],
            "password": row[:password1]
        }
    end

    @url = "http://localhost:3434/cars-app/register"
    
    puts @massa
end
  
Quando('envio as informacoes de login') do
    pending # Write code here that turns the phrase above into concrete actions
end
  
Entao('valido que o login foi realizado com sucesso') do
    pending # Write code here that turns the phrase above into concrete actions
end