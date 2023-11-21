class ConexaoBanco
    def conexao
        Sequel.connect(adapter: 'postgres', database: 'desafio_ruby', user: 'postgres', password: '1234', host: 'localhost')
    end
end