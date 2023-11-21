Dado('ter a massa de dados') do
    #DB = Sequel.connect(adapter: 'postgres', database: 'desafio_ruby', user: 'postgres', password: '1234', host: 'localhost')
    results = conexao_banco.conexao[:registro].all

    results.each do |row|
        @massa = {
            "firstname": row[:firstname],
            "lastname": row[:lastname],
            "username": row[:username],
            "password": row[:password1]
        }
    end

    @url = "http://localhost:3434/cars-app/register"
end
  
Quando('envio as informacoes de cadastro') do
    @response = metodos_api.criar_usuario(@url, @massa)
end
  
Entao('valido que o cadastro foi realizado com sucesso') do
    expect(@response.code).to eql(200)
    expect(@response.body).to include('success')
    binding.pry
end

Dado('ter um usuario cadastrado') do
    results = conexao_banco.conexao[:login].all
    results.each do |row|
        @massa = {
            "username": row[:username],
            "password": row[:password1]
        }
    end

    @url = "http://localhost:3434/cars-app/api/login"
end

Quando('envio as informações de login') do
    @response = metodos_api.realizar_login(@url, @massa)
    #binding.pry
end
  
Entao('valido que o login foi realizado com sucesso') do
    expect(@response.code).to eql(200)
end