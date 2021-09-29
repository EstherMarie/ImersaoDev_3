listaFilmes = ["Yesterday", "A chegada", "Escola de Rock"]

# Adicionando elementos no final da Array
listaFilmes.push("Star Wars", "Guerra nas Estrelas")
listaFilmes << "Interstellar"

# Adicionando no início da Array
listaFilmes.unshift("Estrelas além do Tempo")

# Adicionando um item em qualquer lugar da Array
listaFilmes.insert(3, "Bohemian Rhapsody", "Totoro", "Avatar")

# Criando uma nova Array sem alterar a Array original
novaLista = listaFilmes.select {|i| i.length < 9 }

# Iterando uma Array
listaFilmes.each {|x| puts x}

puts "\nTamanho da lista original: #{listaFilmes.length}"

puts "\nNova Lista: #{novaLista}"

# puts "\n\nDeseja adicionar novos itens?"
# listaUsuario = []
# listaUsuario.push(gets.gsub(/,/,'","').chomp)

# puts "Aqui está a sua lista: #{listaUsuario}"
