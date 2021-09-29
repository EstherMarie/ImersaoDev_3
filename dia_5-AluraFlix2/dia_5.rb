$listaFilmes = []

def adicionarFilme
    $listaFilmes.push(gets.chomp.to_s)
end

puts "Insira até 5 filmes:"

5.times{adicionarFilme}

puts "\nSua lista: #{$listaFilmes}" if $listaFilmes.length == 5