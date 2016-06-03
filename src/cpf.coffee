class Cpf

    @valida: (cpf) ->
        cpf = cpf.replace /\D/g, ''

        if cpf.length isnt 11 then return no

        if /0{11}|1{11}|2{11}|3{11}|4{11}|5{11}|6{11}|7{11}|8{11}|9{11}/.test cpf then return no

        # valida primeiro digito verificador
        # multiplica os 9 primeiros digitos pela sequencia [10,9,8,7,6,5,4,3,2] e calcula a soma
        soma = 0
        soma += window.parseInt(cpf[i], 10) * (10 - i) for i in [0...9]
        rev = 11 - (soma % 11)

        # caso o resto da divisao seja menor que 2, primeiro digito verificador se torna zero
        rev = 0 if rev is 10 or rev is 11
        return no if rev isnt window.parseInt(cpf[9], 10)

        # valida segundo digito verificador
        # multiplica os 10 primeiros digitos pela sequencia [11,10,9,8,7,6,5,4,3,2] e calcula a soma
        soma = 0
        soma += window.parseInt(cpf[i], 10) * (11 - i) for i in [0...10]
        rev = 11 - (soma % 11)

        # caso o resto da divisao seja menor que 2, segundo digito verificador se torna zero
        rev = 0 if rev is 10 or rev is 11
        return no if rev isnt window.parseInt(cpf[10], 10)

        return yes