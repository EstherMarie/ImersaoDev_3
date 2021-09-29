def verificar(tipo)
    proceder = case tipo
      when 'USD' then true
      when 'EUR' then true
      when 'PEN' then true
      when 'GBP' then true
      else false
    end
  
    proceder
end

def converter
    puts "\nUSD (Dolar),\nEUR (Euro), \nPEN (Novo Sol Peruano) \ne GBP (Libra Esterlina)\n\nDigite a sigla de uma das moedas acima:"
    moeda = gets.chomp.to_s

    if verificar(moeda) == false
        puts 'Moeda inválida'
        exit
    end

    puts 'Insira o valor:'
    valor = gets.chomp.to_f

    if valor < 0
        puts 'Valor inválido'
        exit
    end

    resultado = case moeda
        when 'USD' then valor * 5.41
        when 'EUR' then valor * 6.28
        when 'PEN' then valor * 1.31
        when 'GBP' then valor * 7.26
    end

    puts "\nO resultado em real é R$ #{resultado.round(2)}"
end

converter
  
  