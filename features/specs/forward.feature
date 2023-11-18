#language: pt

@teste_api
Funcionalidade: Testar os metodos da API
    Eu como usuario de uma API
    Quero verificar se a mesma tem seu funcionamento ok
    Para atestar que dados são manipulados no banco de dados

    @CT001
    Cenario: Realizar login
        Dado ter a massa de dados
        Quando envio as informacoes de login
        Entao valido que o login foi realizado com sucesso

    @CT002
    Cenario:
    