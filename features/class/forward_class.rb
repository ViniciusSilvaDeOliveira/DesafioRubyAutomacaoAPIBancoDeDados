class MethodAPI
    def criar_usuario(url, body)
        response = HTTParty.post(url, :body => body)
    end

    def realizar_login(url, body)
        response = HTTParty.post(url, :headers => {"Content-Type" => "application/json"},
                                      :body => body.to_json)
    end

    def realizar_emprestimo(url, body, token)
        response = HTTParty.post(url, :headers => {"Authorization" => "Bearer #{token}"},
                                      :body => body)
    end

    def consultar_emprestimo(url, token)
        response = HTTParty.get(url, :headers => {"Authorization" => "Bearer #{token}"})
    end

    def consultar_historico(url, token)
        response = HTTParty.get(url, :headers => {"Authorization" => "Bearer #{token}"})
    end
end