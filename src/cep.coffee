class Cep

    @valida: (cep) ->
        cep = cep.replace /^\s+|\s+$/, ''
        cep = cep.replace /\D/g, ''
        cep.length is 8
