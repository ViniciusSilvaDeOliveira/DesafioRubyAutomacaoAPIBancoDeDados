#CT001
Dado("ter a massa de dados") do
  #DB = Sequel.connect(adapter: 'postgres', database: 'desafio_ruby', user: 'postgres', password: '1234', host: 'localhost')
  results = conexao_banco.conexao[:registro].all

  results.each do |row|
    @massa = {
      "firstname": row[:firstname],
      "lastname": row[:lastname],
      "username": row[:username],
      "password": row[:password1],
    }
  end

  @url = "http://localhost:3434/cars-app/register"
end

Quando("envio as informacoes de cadastro") do
  @response = metodos_api.criar_usuario(@url, @massa)
end

Entao("valido que o cadastro foi realizado com sucesso") do
  expect(@response.code).to eql(200)
  expect(@response.body).to include("success")
end

#CT002
Dado("ter um usuario cadastrado") do
  results = conexao_banco.conexao[:login].all
  results.each do |row|
    @massa = {
      "username": row[:username],
      "password": row[:password1],
    }
  end

  @url = "http://localhost:3434/cars-app/api/login"
end

Quando("envio as informações de login") do
  #binding.pry
  @response = metodos_api.realizar_login(@url, @massa)
  @access_token = @response["access_token"]
end

Entao("valido que o login foi realizado com sucesso") do
  expect(@response.code).to eql(200)
end

#CT003
Quando("tenho a massa de emprestimo") do
  result = conexao_banco.conexao[:emprestimo].all
  result.each do |row|
    @massa = {
      "firstName": row[:firstName],
      "lastName": row[:lastName],
      "address1": row[:address1],
      "city": row[:city],
      "state": row[:state],
      "zip": row[:zip],
      "country": row[:country],
      "dob": row[:dob],
      "ssn": row[:ssn],
      "employer": row[:employer],
      "phoneNumber": row[:phoneNumber],
      "durationOfJob": row[:durationOfJob],
      "income": row[:income],
      "loanTerm": row[:loanTerm],
      "loanAmount": row[:loanAmount],
      "validateAddress": row[:validateAddress],
    }
  end

  @url = "http://localhost:3434/cars-app/api/loanApp"
end

Quando("envio essas informacoes de emprestimo") do
  @response = metodos_api.realizar_emprestimo(@url, @massa, @access_token)
end

Entao("valido que o emprestimo foi realizado com sucesso") do
  expect(@response.code).to eql(200)
  expect(@response.body).to include("accepted")
end

#CT004
Quando("realizo a consulta de um emprestimo") do
  @response = metodos_api.consultar_emprestimo(@url, @access_token)
end

Entao("valido a consulta do emprestimo") do
  expect(@response.code).to eql(200)
  expect(@response.body).to include("id")
end

#CT005
Quando('realizo a consulta do relatorio de historico do veiculo') do
    @url = "http://localhost:3434/cars-app/carShop/car/2T1KR32E37C639014"
    @response = metodos_api.consultar_historico(@url, @access_token)
end
  
Entao('valido a consulta do historico') do
    expect(@response.code).to eql(200)
end