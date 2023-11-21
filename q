
[1mFrom:[0m C:/Users/tivin/Desktop/Estudos/EstagioBN/DesafioRubyAutomacaoAPIBancoDeDados/features/step_definitions/forward_steps.rb:42 :

    [1;34m37[0m: [32mend[0m
    [1;34m38[0m: 
    [1;34m39[0m: Quando([31m[1;31m'[0m[31menvio as informações de login[1;31m'[0m[31m[0m) [32mdo[0m
    [1;34m40[0m:     puts @massa
    [1;34m41[0m:     @response = metodos_api.realizar_login(@url, @massa)
 => [1;34m42[0m:     binding.pry
    [1;34m43[0m: [32mend[0m
    [1;34m44[0m:   
    [1;34m45[0m: Entao([31m[1;31m'[0m[31mvalido que o login foi realizado com sucesso[1;31m'[0m[31m[0m) [32mdo[0m
    [1;34m46[0m:     [1;34m#binding.pry[0m
    [1;34m47[0m:     expect(@response.code).to eql([1;34m200[0m)

