class Telefone

    @valida: (telefone) ->
        telefone = telefone.replace /\D/g, ''

        if 10 <= telefone.length <= 11
            pattern = ///
                ^
                [1-9]{2}
                ([0-9]{8}|9[0-9]{8})
                $
            ///
            return pattern.test telefone

        return no