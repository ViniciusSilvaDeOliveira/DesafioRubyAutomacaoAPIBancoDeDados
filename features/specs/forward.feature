#language: pt

@teste_api
Funcionalidade: Testar os metodos da API
    Eu como usuario de uma API
    Quero verificar se a mesma tem seu funcionamento ok
    Para atestar que dados são manipulados no banco de dados

    @CT001
    Cenario: Realizar cadastro
        Dado ter a massa de dados
        Quando envio as informacoes de cadastro
        Entao valido que o cadastro foi realizado com sucesso

    @CT002
    Cenario: Realizar login
        Dado ter um usuario cadastrado
        Quando envio as informações de login
        Entao valido que o login foi realizado com sucesso
    