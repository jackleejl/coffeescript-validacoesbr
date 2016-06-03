class Data

    @valida: (data) ->
        [day, month, year] = data.split '/'
        day = window.parseInt day, 10
        month = window.parseInt month, 10
        year = window.parseInt year, 10
        utcDate = new Date Date.UTC year, month - 1, day, 0, 0, 0
        day is utcDate.getUTCDate() && month is utcDate.getUTCMonth() + 1 && year is utcDate.getUTCFullYear()