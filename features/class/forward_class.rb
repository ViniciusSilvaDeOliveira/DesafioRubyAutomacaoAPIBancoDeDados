class MethodAPI
    def criar_usuario(url, body)
        response = HTTParty.post(url, :body => body)
    end

    def realizar_login(url, body)
        response = HTTParty.post(url, :headers => {"Content-Type" => "application/json"},
                                      :body => body.to_json)
    end
end