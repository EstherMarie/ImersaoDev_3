def converter
	valor = gets.chomp.to_f
    
	if valor > 0
	    puts "O resultado em real é R$ #{(valor * 5).round(2)}" 
	else
		puts "Valor inválido"
	end
end

puts "Insira o valor em Dólares:"
converter